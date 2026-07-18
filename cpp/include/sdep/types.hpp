// SPDX-License-Identifier: MIT
// SDEP — Secure Device Enrollment Protocol
// Enumerations and small value types (§2.1, §4.5).
#pragma once

#include <cstdint>

namespace sdep {

enum class FleetMode : std::uint8_t { Disabled, Enabled };

enum class KeyVaultResult : std::uint8_t { Ok, NotFound, IoError };

enum class AuthResult : std::uint8_t {
    Authenticated,
    Unauthenticated,
    VaultUnavailable,
};

// SPEC §2.1 lists {Success, AlreadyActive}; P22 references "I/O failure"
// outcomes that are neither, so we add an IoFailure variant.
enum class ActivationResult : std::uint8_t {
    Success,
    AlreadyActive,
    IoFailure,
};

enum class ProvisionResult : std::uint8_t {
    Succeeded,
    Unauthorized,
    BadRequest,
    Disabled,
    InternalError,
};

enum class EnrollmentResult : std::uint8_t {
    Succeeded,
    Unauthorized,
    Disabled,
    InternalError,
};

enum class AccessMode : std::uint8_t { Off, Audit, Enforce };

enum class AccessDecision : std::uint8_t { Allow, Deny, NoRule };

// Bounded host canonicalization class used by URL route-matching helpers.
enum class CanonHostClass : std::uint8_t {
    Imds,
    WireServer,
    Unknown,
    UserinfoPresent,
};

// Result of enforceAccess (§4.5).
struct EnforceOutcome {
    bool allowed;
    bool logged;

    [[nodiscard]] friend constexpr bool
    operator==(const EnforceOutcome&, const EnforceOutcome&) = default;
};

} // namespace sdep
