// SPDX-License-Identifier: MIT
// SDEP — Stateful request-dispatch controller.
//
// The controller is the only place that *combines* the pure decision
// functions (§4) with stateful I/O (the in-memory KeyStore) and with
// fallible parsing (UUID extraction from request URLs). It is also the
// only place that catches `ProtocolError`.
#pragma once

#include <chrono>
#include <cstdint>
#include <optional>
#include <string>
#include <vector>

#include "sdep/request.hpp"
#include "sdep/types.hpp"
#include "sdep/key_store.hpp"

namespace sdep {

// Clock interface for testable time. Returns unix seconds.
struct Clock {
    virtual ~Clock() = default;
    [[nodiscard]] virtual std::int64_t now_unix() const noexcept = 0;
};

struct SystemClock final : Clock {
    [[nodiscard]] std::int64_t now_unix() const noexcept override {
        using namespace std::chrono;
        return duration_cast<seconds>(system_clock::now().time_since_epoch()).count();
    }
};

// Response object returned by activate dispatch. The `errorMessage` is set
// only when a ProtocolError was caught; it never echoes secret material.
struct ActivateResponse {
    EnrollmentResult        result{EnrollmentResult::Unauthorized};
    std::optional<std::string> errorMessage{};
};

class FleetController {
public:
    explicit FleetController(bool fleetEnabled,
                             std::vector<std::uint8_t> vaultKey,
                             std::vector<std::string> requiredClaims,
                             const Clock* clock,
                             std::int64_t dateWindowSeconds = 900) noexcept
        : fleetEnabled_(fleetEnabled),
          vaultKey_(std::move(vaultKey)),
          requiredClaims_(std::move(requiredClaims)),
          clock_(clock),
          dateWindowSeconds_(dateWindowSeconds) {}

    // POST /enroll/key
    [[nodiscard]] ProvisionResult
    handle_provision(const DeviceRequest& request,
                     KeyVaultResult       vaultResult,
                     EnrollmentKey        candidate);

    // POST /enroll/key/{keyId}/activate
    //
    // This method may have ProtocolError thrown from the UUID parser; it
    // catches and maps to EnrollmentResult::Unauthorized (the spec uses 401
    // for any malformed activation request — P10/P21).
    //
    // Freshness is verified against `request.timestamp` (which is bound
    // into the signed canonical bytes by canonicalizePayload); no caller-
    // supplied timestamp parameter exists, so a replayed signed request
    // cannot be paired with a fresh "current time" to forge freshness.
    // Mechanised as Cryptol property `P29_VerifierUsesRequestBoundTimestamp`.
    [[nodiscard]] ActivateResponse
    handle_activate(const DeviceRequest& request,
                    bool                 signatureValid);

    // GET /enroll/status
    [[nodiscard]] EnrollmentStatus
    handle_status(const DeviceRequest& request) const;

    [[nodiscard]] const KeyStore& keys() const noexcept { return keys_; }
    [[nodiscard]] KeyStore& keys() noexcept { return keys_; }

private:
    [[nodiscard]] static bool
    has_metadata_header(const DeviceRequest& request) noexcept;

    [[nodiscard]] static bool
    has_provision_scheme(const DeviceRequest& request) noexcept;

    // Extract `{keyId}` from a path like "/enroll/key/{uuid}/activate".
    // Throws InvalidRouteError if the shape doesn't match, or
    // InvalidUuidError if the segment isn't a UUID.
    [[nodiscard]] static Uuid
    parse_activate_path(const std::string& path);

    bool                       fleetEnabled_;
    std::vector<std::uint8_t>  vaultKey_;
    std::vector<std::string>   requiredClaims_;
    const Clock*               clock_;
    std::int64_t               dateWindowSeconds_;
    KeyStore                   keys_;
};

} // namespace sdep
