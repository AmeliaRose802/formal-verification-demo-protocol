// SPDX-License-Identifier: MIT
// SDEP — Property tests for P1..P22 (§5).
//
// This is a minimal assertion-based test runner (no GoogleTest etc.) so the
// project has zero external deps and builds with just clang++.
#include <array>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <span>
#include <string>
#include <vector>

#include "sdep/access.hpp"
#include "sdep/auth.hpp"
#include "sdep/canonical.hpp"
#include "sdep/controller.hpp"
#include "sdep/decision.hpp"
#include "sdep/errors.hpp"
#include "sdep/hmac.hpp"
#include "sdep/key_store.hpp"
#include "sdep/request.hpp"
#include "sdep/types.hpp"

namespace {

int g_failed = 0;
int g_passed = 0;

#define CHECK(...) do {                                                 \
    if (!(__VA_ARGS__)) {                                               \
        ++g_failed;                                                     \
        std::fprintf(stderr,                                            \
                     "  FAIL: %s  (%s:%d)\n", #__VA_ARGS__, __FILE__, __LINE__); \
    } else {                                                            \
        ++g_passed;                                                     \
    }                                                                   \
} while (0)

#define SECTION(name) std::printf("[%s]\n", name)

using namespace sdep;

DeviceRequest make_valid_provision_request() {
    DeviceRequest r;
    r.method = "POST";
    r.path   = "/enroll/key";
    r.headers["X-Fleet-Metadata"]    = "true";
    r.headers["X-Fleet-Auth-Scheme"] = "hmac-sha256";
    return r;
}

DeviceRequest make_activate_request(const std::string& keyIdHex) {
    DeviceRequest r;
    r.method = "POST";
    r.path   = "/enroll/key/" + keyIdHex + "/activate";
    r.headers["X-Fleet-Metadata"] = "true";
    r.headers["X-Fleet-Claims"]   = R"({"deviceId":"dev-1","tenant":"t-1"})";
    return r;
}

EnrollmentKey make_key(std::uint8_t marker) {
    EnrollmentKey k;
    k.keyId.bytes.fill(marker);
    k.secret.fill(static_cast<std::uint8_t>(marker ^ 0xa5));
    k.isActive  = false;
    k.createdAt = 1'716'400'000; // arbitrary
    return k;
}

struct FakeClock final : Clock {
    std::int64_t value{0};
    [[nodiscard]] std::int64_t now_unix() const noexcept override { return value; }
};

// -------------- Category A: Key lifecycle (P1..P5) ------------------------

void test_P1_active_key_cannot_be_reactivated() {
    SECTION("P1 — Active Key Cannot Be Re-Activated");
    KeyStore store;
    auto key = make_key(0x11);
    CHECK(store.provision(key).has_value());
    CHECK(store.activate(key.keyId) == ActivationResult::Success);
    // Subsequent activations: always AlreadyActive, regardless of how many.
    for (int i = 0; i < 8; ++i) {
        CHECK(store.activate(key.keyId) == ActivationResult::AlreadyActive);
    }
    // Active state never reverts.
    CHECK(store.isActive());
}

void test_P2_active_key_blocks_provisioning() {
    SECTION("P2 — Active Key Blocks Provisioning");
    // Pure decision function form:
    CHECK(provisionKey(true, true, KeyVaultResult::Ok, /*keyIsActive=*/true)
          == ProvisionResult::Unauthorized);

    // Stateful form via KeyStore:
    KeyStore store;
    auto k = make_key(0x22);
    (void)store.provision(k);
    (void)store.activate(k.keyId);
    auto reprov = store.provision(make_key(0x33));
    CHECK(!reprov.has_value());
}

void test_P3_keyid_hidden_before_activation() {
    SECTION("P3 — Key ID Hidden Before Activation");
    Uuid id{}; id.bytes.fill(0x55);
    const auto status = getStatus(/*fleetEnabled=*/true, /*hasKey=*/true,
                                  /*keyIsActive=*/false, id);
    CHECK(!status.keyId.has_value());
    CHECK(status.isActive == false);
}

void test_P4_keyid_revealed_after_activation() {
    SECTION("P4 — Key ID Revealed After Activation");
    Uuid id{}; id.bytes.fill(0x77);
    const auto status = getStatus(true, true, /*keyIsActive=*/true, id);
    CHECK(status.keyId.has_value());
    CHECK(*status.keyId == id);
    CHECK(status.isActive == true);
}

void test_P5_disabled_fleet_rejects_everything() {
    SECTION("P5 — Disabled Fleet Rejects Everything");
    for (const bool validReq : {false, true}) {
        for (const auto vr : {KeyVaultResult::Ok, KeyVaultResult::NotFound,
                              KeyVaultResult::IoError}) {
            for (const bool keyActive : {false, true}) {
                CHECK(provisionKey(/*fleetEnabled=*/false, validReq, vr, keyActive)
                      == ProvisionResult::Disabled);
            }
        }
    }
    for (const bool md : {false, true}) {
        for (const auto ar : {AuthResult::Authenticated,
                              AuthResult::Unauthenticated,
                              AuthResult::VaultUnavailable}) {
            for (const auto act : {ActivationResult::Success,
                                   ActivationResult::AlreadyActive,
                                   ActivationResult::IoFailure}) {
                CHECK(enrollDevice(/*fleetEnabled=*/false, md, ar, act)
                      == EnrollmentResult::Disabled);
            }
        }
    }
}

// -------------- Category B: Authentication (P6..P10) ----------------------

void test_P6_auth_rejects_invalid_date() {
    SECTION("P6 — Auth Rejects Invalid Date");
    for (const bool sig : {false, true}) {
        for (const bool cl : {false, true}) {
            CHECK(authenticate(/*dateValid=*/false, sig, cl) == false);
        }
    }
}

void test_P7_auth_rejects_invalid_signature() {
    SECTION("P7 — Auth Rejects Invalid Signature");
    for (const bool d : {false, true}) {
        for (const bool cl : {false, true}) {
            CHECK(authenticate(d, /*signatureValid=*/false, cl) == false);
        }
    }
}

void test_P8_correct_hmac_verifies() {
    SECTION("P8 — Correct HMAC Verifies");
    DeviceRequest req;
    req.method = "POST";
    req.path   = "/enroll/key/abc/activate";
    req.headers["X-Fleet-Metadata"] = "true";
    req.headers["X-Fleet-Date"]     = "2026-05-22T00:00:00Z";
    req.query["device"]             = "dev-1";
    req.body = {'h','e','l','l','o'};

    const std::array<std::uint8_t, 32> key{
        0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,
        0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0x10,
        0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,
        0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f,0x20,
    };
    const std::string payload = canonicalizePayload(req);
    const auto sig = crypto::hmac_sha256(
        std::span<const std::uint8_t>{key.data(), key.size()}, payload);
    CHECK(isValidSignature(std::span<const std::uint8_t>{key},
                           req,
                           std::span<const std::uint8_t>{sig}));
}

void test_P9_wrong_hmac_fails() {
    SECTION("P9 — Wrong HMAC Fails");
    DeviceRequest req;
    req.method = "POST";
    req.path   = "/enroll/key/abc/activate";
    req.body = {'h','i'};

    const std::array<std::uint8_t, 32> key{}; // zeros
    auto bogus = std::array<std::uint8_t, 32>{};
    bogus.fill(0xff); // definitely not the HMAC of anything with zero key + req
    CHECK(!isValidSignature(std::span<const std::uint8_t>{key},
                            req,
                            std::span<const std::uint8_t>{bogus}));

    // Truncated signatures also fail.
    auto truncated = std::array<std::uint8_t, 16>{};
    CHECK(!isValidSignature(std::span<const std::uint8_t>{key},
                            req,
                            std::span<const std::uint8_t>{truncated}));
}

void test_P10_missing_metadata_is_unauthorized() {
    SECTION("P10 — Missing Metadata Is Unauthorized");
    for (const auto ar : {AuthResult::Authenticated,
                          AuthResult::Unauthenticated,
                          AuthResult::VaultUnavailable}) {
        for (const auto act : {ActivationResult::Success,
                               ActivationResult::AlreadyActive,
                               ActivationResult::IoFailure}) {
            CHECK(enrollDevice(/*fleetEnabled=*/true,
                               /*validMetadata=*/false, ar, act)
                  == EnrollmentResult::Unauthorized);
        }
    }
}

// -------------- Category C: Access control (P11..P14) ---------------------

void test_P11_access_off_allows_without_logging() {
    SECTION("P11 — Access Off Allows Without Logging");
    for (const auto d : {AccessDecision::Allow, AccessDecision::Deny,
                         AccessDecision::NoRule}) {
        CHECK(enforceAccess(AccessMode::Off, d) == EnforceOutcome{true, false});
    }
}

void test_P12_access_audit_never_denies() {
    SECTION("P12 — Access Audit Never Denies");
    for (const auto d : {AccessDecision::Allow, AccessDecision::Deny,
                         AccessDecision::NoRule}) {
        CHECK(enforceAccess(AccessMode::Audit, d).allowed == true);
    }
}

void test_P13_access_enforce_blocks_denials() {
    SECTION("P13 — Access Enforce Blocks Denials");
    CHECK(enforceAccess(AccessMode::Enforce, AccessDecision::Deny)
          == EnforceOutcome{false, true});
}

void test_P14_access_enforce_allows_permitted() {
    SECTION("P14 — Access Enforce Allows Permitted");
    CHECK(enforceAccess(AccessMode::Enforce, AccessDecision::Allow)
          == EnforceOutcome{true, false});
}

// -------------- Category D: Liveness (P15..P18) ---------------------------

void test_P15_authorized_request_on_inactive_key_succeeds() {
    SECTION("P15 — Authorized Request On Inactive Key Succeeds");
    CHECK(provisionKey(true, true, KeyVaultResult::Ok, false)
          == ProvisionResult::Succeeded);
}

void test_P16_authenticated_enrollment_succeeds() {
    SECTION("P16 — Authenticated Enrollment Succeeds");
    CHECK(enrollDevice(true, true, AuthResult::Authenticated,
                       ActivationResult::Success)
          == EnrollmentResult::Succeeded);
}

void test_P17_timestamp_at_boundary_accepted() {
    SECTION("P17 — Timestamp At Boundary Accepted");
    constexpr std::int64_t window = 900;
    constexpr std::int64_t now    = 1'000'000;
    CHECK(isValidRequestDate(now - window, now, window) == true);
}

void test_P18_timestamp_beyond_boundary_rejected() {
    SECTION("P18 — Timestamp Beyond Boundary Rejected");
    constexpr std::int64_t window = 900;
    constexpr std::int64_t now    = 1'000'000;
    CHECK(isValidRequestDate(now - window - 1, now, window) == false);
}

// -------------- Category E: Error handling (P19..P22) ---------------------

void test_P19_vault_unavailable_is_internal_error() {
    SECTION("P19 — Vault Unavailable Is Internal Error");
    for (const auto act : {ActivationResult::Success,
                           ActivationResult::AlreadyActive,
                           ActivationResult::IoFailure}) {
        CHECK(enrollDevice(true, true, AuthResult::VaultUnavailable, act)
              == EnrollmentResult::InternalError);
    }
}

void test_P20_invalid_request_is_bad_request() {
    SECTION("P20 — Invalid Request Is Bad Request");
    for (const auto vr : {KeyVaultResult::Ok, KeyVaultResult::NotFound,
                          KeyVaultResult::IoError}) {
        for (const bool keyActive : {false, true}) {
            CHECK(provisionKey(true, /*validRequest=*/false, vr, keyActive)
                  == ProvisionResult::BadRequest);
        }
    }
}

void test_P21_activate_without_metadata_is_unauthorized() {
    SECTION("P21 — Activate Without Metadata Is Unauthorized");
    for (const auto ar : {AuthResult::Authenticated,
                          AuthResult::Unauthenticated,
                          AuthResult::VaultUnavailable}) {
        for (const auto act : {ActivationResult::Success,
                               ActivationResult::AlreadyActive,
                               ActivationResult::IoFailure}) {
            CHECK(enrollDevice(true, /*validMetadata=*/false, ar, act)
                  == EnrollmentResult::Unauthorized);
        }
    }
}

void test_P22_activation_io_failure_is_internal_error() {
    SECTION("P22 — Activation IO Failure Is Internal Error");
    CHECK(enrollDevice(true, true, AuthResult::Authenticated,
                       ActivationResult::IoFailure)
          == EnrollmentResult::InternalError);
}

// -------------- Exception handling -----------------------------------------

void test_uuid_throws_on_malformed_input() {
    SECTION("Exception — Uuid::from_string throws InvalidUuidError");
    bool caught = false;
    try {
        (void)Uuid::from_string("not-a-uuid");
    } catch (const InvalidUuidError& ex) {
        caught = true;
        CHECK(std::string(ex.what()).find("Uuid") != std::string::npos);
    } catch (...) {
        // Should be caught above.
    }
    CHECK(caught);

    bool caught_nonhex = false;
    try {
        (void)Uuid::from_string("zzzzzzzz-zzzz-zzzz-zzzz-zzzzzzzzzzzz");
    } catch (const ProtocolError&) {
        caught_nonhex = true;
    }
    CHECK(caught_nonhex);
}

void test_controller_catches_protocol_error() {
    SECTION("Exception — FleetController catches ProtocolError on activate");
    FakeClock clock; clock.value = 1'700'000'000;

    FleetController ctl(/*fleetEnabled=*/true,
                        /*vaultKey=*/{0x01, 0x02, 0x03},
                        /*requiredClaims=*/{"deviceId", "tenant"},
                        &clock);

    // Provision so there's something to activate.
    const auto k = make_key(0xab);
    auto prov = make_valid_provision_request();
    const auto pres = ctl.handle_provision(prov, KeyVaultResult::Ok, k);
    CHECK(pres == ProvisionResult::Succeeded);

    // Send an activate request whose path contains a malformed UUID. The
    // boundary parser throws InvalidUuidError; the controller MUST catch.
    DeviceRequest bad = make_activate_request("definitely-not-a-uuid");
    bad.timestamp = clock.value;
    const auto resp = ctl.handle_activate(bad, /*signatureValid=*/true);

    CHECK(resp.result == EnrollmentResult::Unauthorized);
    CHECK(resp.errorMessage.has_value());
    if (resp.errorMessage.has_value()) {
        CHECK(resp.errorMessage->find("Uuid") != std::string::npos
              || resp.errorMessage->find("activate") != std::string::npos);
    }

    // And the key is still provisional — the failed boundary parse must NOT
    // have mutated state.
    CHECK(ctl.keys().isActive() == false);

    // A well-formed activate against the real key id still works.
    DeviceRequest good = make_activate_request(k.keyId.to_string());
    good.timestamp = clock.value;
    const auto resp2 = ctl.handle_activate(good, /*signatureValid=*/true);
    CHECK(resp2.result == EnrollmentResult::Succeeded);
    CHECK(ctl.keys().isActive() == true);
}

// -------------- Canonicalization sanity ------------------------------------

void test_canonicalization_strips_auth_and_sorts() {
    SECTION("Canonicalization — strips auth header, sorts case-insensitively");
    DeviceRequest r;
    r.method = "POST";
    r.path   = "/x";
    r.headers["X-Fleet-Authorization"] = "hmac-sha256 KEYID SIG";
    r.headers["X-Fleet-Metadata"]      = "true";
    r.headers["B-Header"]              = "   spaced   ";
    r.query["Beta"] = "2";
    r.query["alpha"] = "1";

    const std::string p = canonicalizePayload(r);

    // Authorization header is excluded from the canonical bytes entirely
    // (under any casing).
    CHECK(p.find("x-fleet-authorization") == std::string::npos);

    // Headers / query are now length-prefixed (8-byte big-endian tag per
    // name and per value, no inter-record delimiters) so the raw name and
    // trimmed value bytes both appear, but the historical "b-header:spaced"
    // and "alpha=1&beta=2" punctuated forms must not.
    CHECK(p.find("b-header")    != std::string::npos);
    CHECK(p.find("spaced")      != std::string::npos);
    CHECK(p.find("b-header:")   == std::string::npos);
    CHECK(p.find("alpha")       != std::string::npos);
    CHECK(p.find("beta")        != std::string::npos);
    CHECK(p.find("alpha=1")     == std::string::npos);
    CHECK(p.find("beta=2")      == std::string::npos);
    CHECK(p.find("&")           == std::string::npos);
}

} // namespace

int main() {
    test_P1_active_key_cannot_be_reactivated();
    test_P2_active_key_blocks_provisioning();
    test_P3_keyid_hidden_before_activation();
    test_P4_keyid_revealed_after_activation();
    test_P5_disabled_fleet_rejects_everything();
    test_P6_auth_rejects_invalid_date();
    test_P7_auth_rejects_invalid_signature();
    test_P8_correct_hmac_verifies();
    test_P9_wrong_hmac_fails();
    test_P10_missing_metadata_is_unauthorized();
    test_P11_access_off_allows_without_logging();
    test_P12_access_audit_never_denies();
    test_P13_access_enforce_blocks_denials();
    test_P14_access_enforce_allows_permitted();
    test_P15_authorized_request_on_inactive_key_succeeds();
    test_P16_authenticated_enrollment_succeeds();
    test_P17_timestamp_at_boundary_accepted();
    test_P18_timestamp_beyond_boundary_rejected();
    test_P19_vault_unavailable_is_internal_error();
    test_P20_invalid_request_is_bad_request();
    test_P21_activate_without_metadata_is_unauthorized();
    test_P22_activation_io_failure_is_internal_error();
    test_uuid_throws_on_malformed_input();
    test_controller_catches_protocol_error();
    test_canonicalization_strips_auth_and_sorts();

    std::printf("\n==== %d passed, %d failed ====\n", g_passed, g_failed);
    return g_failed == 0 ? 0 : 1;
}
