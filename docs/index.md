---
uid: SDEP_cpp
title: SDEP_cpp
---

# SDEP_cpp

## How verification works here

This site reports **two independent layers of proof**, and a security claim about the production binary needs *both*:

1. **Properties are proven against the design.** Each entry in [Security Properties](#security-properties) is a Cryptol `property` discharged by a solver (typically Z3) over the Cryptol model. A `✓` here says the *logic of the spec* is sound.

2. **Functions are proven against the implementation.** Each entry in [Functions](functions/index.md) is a Cryptol shim paired with a SAW `llvm_verify` / `mir_verify` proof showing the C++/Rust implementation produces identical outputs on every input. A `✓` here says *the code matches the model*.

A property's guarantee therefore only transfers to the compiled binary insofar as **every function it mentions** also carries a SAW equivalence proof. Each property page surfaces this transitive status as an *Implementation equivalence* callout: if any involved function is unproven, assumed, or failed, the callout calls that out explicitly so a green Cryptol verdict isn't read as an end-to-end certificate.

## Types

All type definitions: [types.md](types.md)

## Functions

| Function | Status | Description |
|----------|--------|-------------|
| [provisionKey](functions/provisionKey.md) | ✓ proven | Evaluates 4 conditions on `fleetEnabled`, `validRequest`, `vaultResult`, and `keyIsActive` in priority order, returning the first applicable 8 bits. Defaults to `PR_Succeeded_b` when no prior condition matches. |
| [enrollDevice](functions/enrollDevice.md) | ✓ proven | The C++ body uses `switch` on AuthResult and ActivationResult.  Any enum value outside the declared set falls through to the defensive `return Unauthorized` after the outer switch.  We mirror that here. |
| [authenticate](functions/authenticate.md) | ✓ proven | Evaluates a boolean condition over `dateValid`, `signatureValid`, and `claimsValid`. |
| [isValidRequestDate](functions/isValidRequestDate.md) | ✓ proven | `std::int64_t` semantics. The implementation in cpp/include/sdep/auth.hpp first rejects negative timestamps / window (otherwise the subtraction `currentTime - requestTs` can wrap signed-overflow when requestTs is near INT64_MIN — found by SAW on 2026-05-30, see FINDINGS.md §1). The shim below mirrors that guard exactly so the SAW equivalence proof goes through for all i64 inputs. |
| [packOutcome](functions/packOutcome.md) | — | Computes 16 bits from `allowed` and `logged`. |
| [enforceAccess](functions/enforceAccess.md) | ✓ proven | Evaluates 8 conditions on `mode` and `decision` in priority order, returning the first applicable 16 bits. Defaults to `packOutcome True  False` when no prior condition matches. |
| [getStatus](functions/getStatus.md) | ✗ failed | Computes `// pre-call bytes of the optional storage (havoc)     [20][8]` from `fleetEnabled`, `hasKey`, `keyIsActive`, `keyId`, and `preBytes`. |
| [canonicalize_lp_post](functions/canonicalize_lp_post.md) | ✗ not attempted | Length-prefixed canonicalization writes |
| [canonicalize_lp_ret](functions/canonicalize_lp_ret.md) | ✗ not attempted | Return value of canonicalize_lp: total bytes written = 2 + nm + nb. |
| [isKeyVaultResult_b](functions/isKeyVaultResult_b.md) | ✗ not attempted | Well-formedness predicates over ABI-width enum reps C++ enums are `enum class : std::uint8_t` so the LLVM ABI parameter is i8.  Symbolic execution explores all 256 values; valid program states only ever produce values in the declared range.  These predicates assert that range for use as preconditions in properties. |
| [isAuthResult_b](functions/isAuthResult_b.md) | ✗ not attempted | Checks whether the auth result b is valid for the given inputs. |
| [isActivationResult_b](functions/isActivationResult_b.md) | ✗ not attempted | Checks whether the activation result b is valid for the given inputs. |
| [isAccessMode_b](functions/isAccessMode_b.md) | ✗ not attempted | Checks whether the access mode b is valid for the given inputs. |
| [isAccessDecision_b](functions/isAccessDecision_b.md) | ✗ not attempted | Checks whether the access decision b is valid for the given inputs. |
| [allowedOf](functions/allowedOf.md) | ✗ not attempted | enforceAccess result extractors enforceAccess packs the EnforceOutcome struct into one i16 with little-endian byte order: low byte = allowed (0 or 1), high byte = logged (0 or 1). These helpers project the i16 back to Bits. |
| [loggedOf](functions/loggedOf.md) | ✗ not attempted | Tests whether `r` is well-formed. |
| [statusEngagedByte](functions/statusEngagedByte.md) | ✗ not attempted | Computes 8 bits from `s`. |
| [statusPayloadBytes](functions/statusPayloadBytes.md) | ✗ not attempted | Computes 16 bytes from `s`. |
| [hmacSha256](functions/hmacSha256.md) | — | Specs only use equality of HMAC outputs; the placeholder body is opaque to the solver, which models `hmacSha256` as an uninterpreted pure function for proof purposes. |
| [isValidSignature](functions/isValidSignature.md) | — | Checks whether the signature is valid by comparing the computed and expected values. |
| [canonNormalized](functions/canonNormalized.md) | — | Compares computed and provided values over `n` and `b`, returning `True` on match. |
| [canonLenPrefixed](functions/canonLenPrefixed.md) | — | Bounded model writes a one-byte length tag followed by the FieldLen-byte field buffer. Production uses a 64-bit big-endian tag, but the injectivity argument that P23-P25 rely on is identical at any width. |
| [fieldNormalized](functions/fieldNormalized.md) | — | Compares computed and provided values over `f`, returning `True` on match. |
| [requestNormalized](functions/requestNormalized.md) | — | Tests whether `r` is well-formed. |
| [lpField](functions/lpField.md) | — | Computes 1 + StructFieldLen bytes from `f`. |
| [lpHeader](functions/lpHeader.md) | — | Computes 2 * (1 + StructFieldLen) bytes from `h`. |
| [canonicalizeS](functions/canonicalizeS.md) | ✗ not attempted | Computes 3 * (1 + StructFieldLen) + MaxHeaders * 2 * (1 + StructFieldLen) + 8 bytes from `r`. |
| [verifierTimestamp_current](functions/verifierTimestamp_current.md) | — | Computes 64 bits from `r` and `_`. |

Per-function detail pages: [functions](functions/index.md)

## Security Properties

| Category | Properties |
|----------|------------|
| [Key Lifecycle Safety](properties/key-lifecycle-safety.md) | P1–P5 |
| [Authentication Security](properties/authentication-security.md) | P6–P10 |
| [Access Control](properties/access-control.md) | P11–P14 |
| [Protocol Liveness](properties/protocol-liveness.md) | P15–P18 |
| [Error Handling](properties/error-handling.md) | P19–P22 |
| [Canonicalization byte-injectivity](properties/canonicalization-byte-injectivity.md) | P23–P25 |
| [enforceAccess matrix-coverage closures](properties/enforce-access-matrix-coverage-closures.md) | P26–P27 |
| [Structured-request properties](properties/structured-request-properties.md) | P28–P29 |
| [Intentional counterexamples](properties/intentional-counterexamples.md) | P30–P32 |


## Additional Documentation

This site ships with additional hand-written documentation:

- [Formal Verification](extra_docs/index.md)
