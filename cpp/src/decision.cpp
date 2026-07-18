// SPDX-License-Identifier: MIT
//
// SDEP — Pure decision logic (§4.1, §4.2, §4.3, §4.4 fix, §4.5, §4.6).
//
// All seven SAW verification targets live here as a single translation unit:
//   - provisionKey      (§4.1)
//   - enrollDevice      (§4.2)
//   - authenticate      (§4.3)
//   - isValidRequestDate (§4.3.1)
//   - canonicalize_lp   (§4.4 fix)
//   - enforceAccess     (§4.5)
//   - getStatus         (§4.6)
//
// These are pure (no I/O, no global state) and tiny, but they were
// historically scattered across several headers as `inline constexpr`
// so the only LLVM symbols ever emitted were inlined-away copies at
// each call site. That forced the SAW pipeline to keep a parallel
// `cpp/saw/verify_targets.cpp` whose only purpose was to ODR-use each
// function via `[[gnu::used]] volatile auto&` pointers so a standalone
// body would land in the bitcode.
//
// That indirection is gone. The production library compiles this file
// normally; the SAW pipeline compiles the same file at `-O0 -fno-inline`
// for verification. The bytes SAW reasons about are the bytes the
// production binary executes (modulo optimisation level — the standard
// release-build assumption).
//
// Headers (`decision.hpp`, `auth.hpp`, `access.hpp`, `canonical_lp.hpp`)
// keep their per-module declarations; nothing in the public API changed.

#include "sdep/access.hpp"
#include "sdep/auth.hpp"
#include "sdep/canonical_lp.hpp"
#include "sdep/decision.hpp"

namespace sdep {

namespace {

constexpr std::uint8_t kMaxHostBytes = 32;

[[nodiscard]] bool asciiEqIgnoreCase(std::uint8_t a, std::uint8_t b) {
    const std::uint8_t la = (a >= 'A' && a <= 'Z') ? static_cast<std::uint8_t>(a + 32) : a;
    const std::uint8_t lb = (b >= 'A' && b <= 'Z') ? static_cast<std::uint8_t>(b + 32) : b;
    return la == lb;
}

[[nodiscard]] std::uint8_t toLowerAscii(std::uint8_t c) {
    if (c >= 'A' && c <= 'Z') {
        return static_cast<std::uint8_t>(c + 32);
    }
    return c;
}

[[nodiscard]] bool hostEq(const std::uint8_t* lowered,
                          std::uint8_t len,
                          const char* lit,
                          std::uint8_t litLen) {
    if (len != litLen) return false;
    for (std::uint8_t i = 0; i < len; ++i) {
        if (!asciiEqIgnoreCase(lowered[i], static_cast<std::uint8_t>(lit[i]))) {
            return false;
        }
    }
    return true;
}

} // namespace

// ── §4.1 ─────────────────────────────────────────────────────────────
ProvisionResult
provisionKey(bool fleetEnabled,
             bool validRequest,
             KeyVaultResult vaultResult,
             bool keyIsActive) noexcept {
    if (!fleetEnabled)                       return ProvisionResult::Disabled;
    if (!validRequest)                       return ProvisionResult::BadRequest;
    if (vaultResult != KeyVaultResult::Ok)   return ProvisionResult::InternalError;
    if (keyIsActive)                         return ProvisionResult::Unauthorized;
    return ProvisionResult::Succeeded;
}

// ── §4.2 ─────────────────────────────────────────────────────────────
EnrollmentResult
enrollDevice(bool fleetEnabled,
             bool validMetadata,
             AuthResult authResult,
             ActivationResult activationResult) noexcept {
    if (!fleetEnabled)  return EnrollmentResult::Disabled;
    if (!validMetadata) return EnrollmentResult::Unauthorized;

    switch (authResult) {
        case AuthResult::Authenticated:
            switch (activationResult) {
                case ActivationResult::Success:       return EnrollmentResult::Succeeded;
                case ActivationResult::AlreadyActive: return EnrollmentResult::Unauthorized;
                case ActivationResult::IoFailure:     return EnrollmentResult::InternalError;
            }
            return EnrollmentResult::InternalError; // unreachable, defensive
        case AuthResult::VaultUnavailable:
            return EnrollmentResult::InternalError;
        case AuthResult::Unauthenticated:
            return EnrollmentResult::Unauthorized;
    }
    return EnrollmentResult::Unauthorized; // unreachable
}

// ── §4.3 ─────────────────────────────────────────────────────────────
bool
authenticate(bool dateValid, bool signatureValid, bool claimsValid) noexcept {
    return dateValid && signatureValid && claimsValid;
}

// ── §4.3.1 ───────────────────────────────────────────────────────────
//
// SECURITY: All three inputs are `std::int64_t`. `requestTimestamp`
// comes from the wire and is adversary-controlled. The naive form
//     return requestTimestamp <= currentTime
//         && (currentTime - requestTimestamp) <= windowSeconds;
// has signed-overflow UB when `requestTimestamp` is near INT64_MIN and
// `currentTime` is positive: `currentTime - requestTimestamp` wraps
// past INT64_MAX and the compiler is free to assume that never happens,
// turning a "should be false" answer into anything at all. SAW found
// this with the counterexample
//     (requestTimestamp = -9.22e18, currentTime = INT64_MAX-1).
//
// The guard below rejects negative timestamps and any negative window
// up front. After the guard, both `currentTime` and `requestTimestamp`
// are non-negative and the precondition `requestTimestamp <= currentTime`
// makes `currentTime - requestTimestamp` ∈ [0, currentTime] ⊆ [0,
// INT64_MAX], so the subtraction is provably non-wrapping.
bool
isValidRequestDate(std::int64_t requestTimestamp,
                   std::int64_t currentTime,
                   std::int64_t windowSeconds) noexcept {
    if (requestTimestamp < 0 || currentTime < 0 || windowSeconds < 0) {
        return false;
    }
    return requestTimestamp <= currentTime
        && (currentTime - requestTimestamp) <= windowSeconds;
}

// ── §4.4 fix — length-prefixed canonicalization ──────────────────────
//
// Writes the byte stream
//     out[0]              = nm
//     out[1..1+nm)        = m[0..nm)
//     out[1+nm]           = nb
//     out[2+nm..2+nm+nb)  = b[0..nb)
// (total 2 + nm + nb bytes) into `out`. Caller must size `out` to at
// least 2 + nm + nb bytes. Returns the number of bytes written.
//
// Verified by auto-generated SAW spec under cpp/saw/out_canonicalize_lp/
// (produced by saw-spec-gen gen-verify) against the canonicalize_lp_post
// Cryptol model in SDEP_cpp.cry.
std::size_t
canonicalize_lp(std::uint8_t* out,
                const std::uint8_t* m, std::uint8_t nm,
                const std::uint8_t* b, std::uint8_t nb) noexcept {
    std::size_t pos = 0;
    out[pos++] = nm;
    for (std::uint8_t i = 0; i < nm; ++i) {
        out[pos++] = m[i];
    }
    out[pos++] = nb;
    for (std::uint8_t i = 0; i < nb; ++i) {
        out[pos++] = b[i];
    }
    return pos;
}

// ── §4.5 ─────────────────────────────────────────────────────────────
EnforceOutcome
enforceAccess(AccessMode mode, AccessDecision decision) noexcept {
    switch (mode) {
        case AccessMode::Off:
            return {true, false};
        case AccessMode::Audit:
            return (decision == AccessDecision::Deny)
                ? EnforceOutcome{true, true}
                : EnforceOutcome{true, false};
        case AccessMode::Enforce:
            switch (decision) {
                case AccessDecision::Allow:  return {true,  false};
                case AccessDecision::Deny:   return {false, true};
                case AccessDecision::NoRule: return {true,  false};
            }
            return {true, false}; // unreachable, defensive
    }
    return {true, false}; // unreachable
}

// ── §4.6 ─────────────────────────────────────────────────────────────
EnrollmentStatus
getStatus(bool fleetEnabled,
          bool hasKey,
          bool keyIsActive,
          const Uuid& keyId) noexcept {
    return EnrollmentStatus{
        .fleetMode = fleetEnabled ? FleetMode::Enabled : FleetMode::Disabled,
        .hasKey    = hasKey,
        .keyId     = keyIsActive ? std::optional<Uuid>{keyId} : std::nullopt,
        .isActive  = keyIsActive,
    };
}

CanonHostClass
classifyCanonicalHost(const std::uint8_t* host,
                      std::uint8_t hostLen) noexcept {
    if (hostLen == 0 || hostLen > kMaxHostBytes) {
        return CanonHostClass::Unknown;
    }

    std::uint8_t lower[kMaxHostBytes] = {};
    for (std::uint8_t i = 0; i < hostLen; ++i) {
        if (host[i] == '@') {
            return CanonHostClass::UserinfoPresent;
        }
        lower[i] = toLowerAscii(host[i]);
    }

    if (hostEq(lower, hostLen, "169.254.169.254", 15) ||
        hostEq(lower, hostLen, "2852039166", 10) ||
        hostEq(lower, hostLen, "0xa9fea9fe", 10) ||
        hostEq(lower, hostLen, "[::ffff:a9fe:a9fe]", 18)) {
        return CanonHostClass::Imds;
    }

    if (hostEq(lower, hostLen, "168.63.129.16", 13) ||
        hostEq(lower, hostLen, "2822734096", 10) ||
        hostEq(lower, hostLen, "0xa83f8110", 10) ||
        hostEq(lower, hostLen, "[::ffff:a83f:8110]", 18)) {
        return CanonHostClass::WireServer;
    }

    return CanonHostClass::Unknown;
}

} // namespace sdep
