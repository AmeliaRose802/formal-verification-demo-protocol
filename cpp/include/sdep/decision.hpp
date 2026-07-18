// SPDX-License-Identifier: MIT
// SDEP — Pure decision logic (§4.1, §4.2, §4.6).
//
// These are the functions targeted by the SAW/Z3 verification: they take
// pre-resolved inputs (booleans + enum tags) and return a result. No I/O.
//
// Bodies live in cpp/src/decision.cpp so a single LLVM symbol per
// function is emitted — that is the symbol SAW verifies. Production
// builds inline these calls through LTO when profitable; inlining is
// observationally equivalent so it preserves the proof.
#pragma once

#include "sdep/request.hpp"
#include "sdep/types.hpp"

namespace sdep {

// §4.1
[[nodiscard]] ProvisionResult
provisionKey(bool fleetEnabled,
             bool validRequest,
             KeyVaultResult vaultResult,
             bool keyIsActive) noexcept;

// §4.2
[[nodiscard]] EnrollmentResult
enrollDevice(bool fleetEnabled,
             bool validMetadata,
             AuthResult authResult,
             ActivationResult activationResult) noexcept;

// §4.6
[[nodiscard]] EnrollmentStatus
getStatus(bool fleetEnabled,
          bool hasKey,
          bool keyIsActive,
          const Uuid& keyId) noexcept;

// Canonical endpoint classifier over common host aliases.
[[nodiscard]] CanonHostClass
classifyCanonicalHost(const std::uint8_t* host,
                      std::uint8_t hostLen) noexcept;

} // namespace sdep
