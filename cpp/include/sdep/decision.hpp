// SPDX-License-Identifier: MIT
// SDEP — Pure decision logic (§4.1, §4.2, §4.6).
//
// These are the functions targeted by the SAW/Z3 verification: they take
// pre-resolved inputs (booleans + enum tags) and return a result. No I/O.
#pragma once

#include "sdep/request.hpp"
#include "sdep/types.hpp"

namespace sdep {

// §4.1
[[nodiscard]] constexpr ProvisionResult
provisionKey(bool fleetEnabled,
             bool validRequest,
             KeyVaultResult vaultResult,
             bool keyIsActive) noexcept {
    if (!fleetEnabled)                  return ProvisionResult::Disabled;
    if (!validRequest)                  return ProvisionResult::BadRequest;
    if (vaultResult != KeyVaultResult::Ok)
                                        return ProvisionResult::InternalError;
    if (keyIsActive)                    return ProvisionResult::Unauthorized;
    return ProvisionResult::Succeeded;
}

// §4.2
[[nodiscard]] constexpr EnrollmentResult
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

// §4.6
[[nodiscard]] constexpr EnrollmentStatus
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

} // namespace sdep
