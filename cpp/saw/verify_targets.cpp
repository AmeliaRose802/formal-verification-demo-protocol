// SPDX-License-Identifier: MIT
//
// SAW verification translation unit.
//
// The SDEP pure decision functions (`provisionKey`, `enrollDevice`,
// `getStatus`, `enforceAccess`, `authenticate`, `isValidRequestDate`)
// are declared `inline constexpr` in headers, so a normal compile
// emits no standalone definition for them — every caller inlines.
//
// SAW operates on LLVM bitcode and needs a real function symbol to
// verify.  Compiling THIS file at `-O0` with `-fno-inline` and forcing
// each function to be ODR-used by name (via the `[[gnu::used]]`
// pointers below) gives every target a `linkonce_odr` body in the
// resulting `.bc`, which is exactly the C++ ABI symbol SAW will
// dispatch on.  No `extern "C"` wrappers, no shim functions — the
// real namespaced, name-mangled C++ functions are what gets verified.
//
// Once the proof goes through, production builds are free to inline
// these functions however they please: inlining preserves observable
// behavior, so a proof of the standalone body is automatically a
// proof of every inlined copy.

#include "sdep/access.hpp"
#include "sdep/auth.hpp"
#include "sdep/canonical_lp.hpp"
#include "sdep/decision.hpp"

namespace sdep::saw_force_emission {

// Disambiguate the defaulted `windowSeconds` parameter of
// isValidRequestDate by selecting the explicit 3-argument overload.
using IsValidRequestDateFn =
    bool (*)(std::int64_t, std::int64_t, std::int64_t) noexcept;

// `volatile` + the GNU `used` attribute prevents any optimizer pass —
// including SROA and global-DCE at -O0 — from discarding these globals
// and the inline definitions they point at.
[[gnu::used]] volatile auto kAddrProvisionKey =
    static_cast<ProvisionResult (*)(bool, bool, KeyVaultResult, bool) noexcept>(
        &::sdep::provisionKey);

[[gnu::used]] volatile auto kAddrEnrollDevice =
    static_cast<EnrollmentResult (*)(bool, bool, AuthResult, ActivationResult) noexcept>(
        &::sdep::enrollDevice);

[[gnu::used]] volatile auto kAddrGetStatus =
    static_cast<EnrollmentStatus (*)(bool, bool, bool, const Uuid&) noexcept>(
        &::sdep::getStatus);

[[gnu::used]] volatile auto kAddrEnforceAccess =
    static_cast<EnforceOutcome (*)(AccessMode, AccessDecision) noexcept>(
        &::sdep::enforceAccess);

[[gnu::used]] volatile auto kAddrAuthenticate =
    static_cast<bool (*)(bool, bool, bool) noexcept>(&::sdep::authenticate);

[[gnu::used]] volatile IsValidRequestDateFn kAddrIsValidRequestDate =
    &::sdep::isValidRequestDate;

// Length-prefixed canonicalization (§4.4 fix). Verified in
// cpp/saw/custom/canonicalize_lp.saw against the canonicalize_lp_post
// Cryptol model in SDEP_cpp.cry. This is the only target that exercises
// memory side-effects + a loop body — saw-spec-gen cannot synthesize it,
// hence the hand-written custom spec.
[[gnu::used]] volatile auto kAddrCanonicalizeLP =
    static_cast<std::size_t (*)(std::uint8_t*,
                                const std::uint8_t*, std::uint8_t,
                                const std::uint8_t*, std::uint8_t) noexcept>(
        &::sdep::canonicalize_lp);

} // namespace sdep::saw_force_emission
