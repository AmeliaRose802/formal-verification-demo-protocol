// SPDX-License-Identifier: MIT
#include "sdep/controller.hpp"

#include <algorithm>
#include <cctype>
#include <span>
#include <string>
#include <string_view>

#include "sdep/auth.hpp"
#include "sdep/decision.hpp"
#include "sdep/errors.hpp"

namespace sdep {

namespace {

std::string to_lower(std::string_view s) {
    std::string out(s);
    std::transform(out.begin(), out.end(), out.begin(), [](unsigned char c) {
        return static_cast<char>(std::tolower(c));
    });
    return out;
}

std::optional<std::string>
lookup_header(const DeviceRequest& request, std::string_view name) {
    const std::string target = to_lower(name);
    for (const auto& [k, v] : request.headers) {
        if (to_lower(k) == target) return v;
    }
    return std::nullopt;
}

bool starts_with(std::string_view s, std::string_view prefix) {
    return s.size() >= prefix.size() && s.compare(0, prefix.size(), prefix) == 0;
}

bool ends_with(std::string_view s, std::string_view suffix) {
    return s.size() >= suffix.size()
        && s.compare(s.size() - suffix.size(), suffix.size(), suffix) == 0;
}

} // namespace

bool FleetController::has_metadata_header(const DeviceRequest& request) noexcept {
    const auto v = lookup_header(request, "X-Fleet-Metadata");
    return v.has_value() && to_lower(*v) == "true";
}

bool FleetController::has_provision_scheme(const DeviceRequest& request) noexcept {
    const auto v = lookup_header(request, "X-Fleet-Auth-Scheme");
    return v.has_value() && to_lower(*v) == "hmac-sha256";
}

Uuid FleetController::parse_activate_path(const std::string& path) {
    constexpr std::string_view kPrefix = "/enroll/key/";
    constexpr std::string_view kSuffix = "/activate";
    if (!starts_with(path, kPrefix) || !ends_with(path, kSuffix)) {
        throw InvalidRouteError("activate: path does not match /enroll/key/{id}/activate");
    }
    const std::size_t start = kPrefix.size();
    const std::size_t end   = path.size() - kSuffix.size();
    if (end <= start) {
        throw InvalidRouteError("activate: empty key id segment");
    }
    return Uuid::from_string(std::string_view{path}.substr(start, end - start));
}

ProvisionResult
FleetController::handle_provision(const DeviceRequest& request,
                                  KeyVaultResult       vaultResult,
                                  EnrollmentKey        candidate) {
    const bool validRequest = has_metadata_header(request)
                           && has_provision_scheme(request);
    const bool keyIsActive  = keys_.isActive();

    const ProvisionResult outcome =
        provisionKey(fleetEnabled_, validRequest, vaultResult, keyIsActive);

    if (outcome == ProvisionResult::Succeeded) {
        // Side effect happens only on the happy path.
        candidate.isActive = false;
        (void)keys_.provision(std::move(candidate));
    }
    return outcome;
}

ActivateResponse
FleetController::handle_activate(const DeviceRequest& request,
                                 bool                 signatureValid) {
    ActivateResponse response{};

    if (!fleetEnabled_) {
        response.result = EnrollmentResult::Disabled;
        return response;
    }

    const bool validMetadata = has_metadata_header(request);
    if (!validMetadata) {
        response.result = EnrollmentResult::Unauthorized; // P21
        return response;
    }

    // Boundary parsing: malformed UUIDs / routes throw ProtocolError.
    Uuid keyId{};
    try {
        keyId = parse_activate_path(request.path);
    } catch (const ProtocolError& ex) {
        // Map malformed inputs to Unauthorized (the protocol's 401 bucket).
        // The exception text is captured for diagnostics but never echoed
        // back to the device in a real deployment.
        response.result       = EnrollmentResult::Unauthorized;
        response.errorMessage = ex.what();
        return response;
    }

    // Authentication: assume the caller pre-verified the signature (HMAC
    // computation against the candidate key happens at the transport layer);
    // we still verify date + claims locally. Freshness is checked against
    // `request.timestamp` — the same byte range bound into the signed
    // canonical payload (P29_TimestampBound).
    const std::int64_t now = clock_ ? clock_->now_unix() : 0;
    const bool dateValid =
        isValidRequestDate(request.timestamp, now, dateWindowSeconds_);
    const auto claimsHeader = lookup_header(request, "X-Fleet-Claims");
    const bool claimsValid  =
        claimsHeader.has_value() && isValidClaims(*claimsHeader, requiredClaims_);

    const bool authenticated = authenticate(dateValid, signatureValid, claimsValid);

    AuthResult authResult;
    if (authenticated)                     authResult = AuthResult::Authenticated;
    else if (!keys_.hasKey())              authResult = AuthResult::VaultUnavailable;
    else                                   authResult = AuthResult::Unauthenticated;

    const ActivationResult activationResult =
        authenticated ? keys_.activate(keyId) : ActivationResult::IoFailure;

    response.result = enrollDevice(fleetEnabled_, validMetadata,
                                   authResult, activationResult);
    return response;
}

EnrollmentStatus
FleetController::handle_status(const DeviceRequest& /*request*/) const {
    const auto current = keys_.current();
    const bool hasKey      = current.has_value();
    const bool keyIsActive = current.has_value() && current->isActive;
    const Uuid keyId       = current.has_value() ? current->keyId : Uuid{};
    return getStatus(fleetEnabled_, hasKey, keyIsActive, keyId);
}

} // namespace sdep
