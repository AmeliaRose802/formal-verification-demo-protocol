---
uid: SDEP_cpp
title: SDEP_cpp
---

# SDEP_cpp

## Coverage at a glance

✅ 6 proven · 🔲 0 bounded · 🔒 0 trusted assumptions · 🧩 25 adapters/stand-ins · ⚠️ 17 **unverified** · 📄 32 spec-only

See the full breakdown — including every real function the codebase contains, whether or not it was modeled — on the [Coverage Matrix](coverage.md). Pages here that carry a 🧩, 🔲, or ⚠️ badge surface the caveat in a banner at the top.

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
| [provisionKey](functions/provisionKey.md) | ✅ Proven | Evaluates 4 conditions on `fleetEnabled`, `validRequest`, `vaultResult`, and `keyIsActive` in priority order, returning the first applicable 8 bits. Defaults to `PR_Succeeded_b` when no prior condition matches. |
| [enrollDevice](functions/enrollDevice.md) | ✅ Proven | The C++ body uses `switch` on AuthResult and ActivationResult.  Any enum value outside the declared set falls through to the defensive `return Unauthorized` after the outer switch.  We mirror that here. |
| [authenticate](functions/authenticate.md) | ✅ Proven | Evaluates a boolean condition over `dateValid`, `signatureValid`, and `claimsValid`. |
| [isValidRequestDate](functions/isValidRequestDate.md) | ✅ Proven | `std::int64_t` semantics. The implementation in cpp/include/sdep/auth.hpp first rejects negative timestamps / window (otherwise the subtraction `currentTime - requestTs` can wrap signed-overflow when requestTs is near INT64_MIN — found by SAW on 2026-05-30, see FINDINGS.md §1). The shim below mirrors that guard exactly so the SAW equivalence proof goes through for all i64 inputs. |
| [packOutcome](functions/packOutcome.md) | — | Computes 16 bits from `allowed` and `logged`. |
| [enforceAccess](functions/enforceAccess.md) | ✅ Proven | Evaluates 8 conditions on `mode` and `decision` in priority order, returning the first applicable 16 bits. Defaults to `packOutcome True  False` when no prior condition matches. |
| [getStatus](functions/getStatus.md) | ✅ Proven | Computes `// pre-call bytes of the optional storage (havoc)     [20][8]` from `fleetEnabled`, `hasKey`, `keyIsActive`, `keyId`, and `preBytes`. |
| [canonicalize_lp_post](functions/canonicalize_lp_post.md) | 🧩 ABI adapter / stand-in | Length-prefixed canonicalization writes |
| [canonicalize_lp_ret](functions/canonicalize_lp_ret.md) | 🧩 ABI adapter / stand-in | Return value of canonicalize_lp: total bytes written = 2 + nm + nb. |
| [isKeyVaultResult_b](functions/isKeyVaultResult_b.md) | 🧩 ABI adapter / stand-in | Well-formedness predicates over ABI-width enum reps C++ enums are `enum class : std::uint8_t` so the LLVM ABI parameter is i8.  Symbolic execution explores all 256 values; valid program states only ever produce values in the declared range.  These predicates assert that range for use as preconditions in properties. |
| [isAuthResult_b](functions/isAuthResult_b.md) | 🧩 ABI adapter / stand-in | Checks whether the auth result b is valid for the given inputs. |
| [isActivationResult_b](functions/isActivationResult_b.md) | 🧩 ABI adapter / stand-in | Checks whether the activation result b is valid for the given inputs. |
| [isAccessMode_b](functions/isAccessMode_b.md) | 🧩 ABI adapter / stand-in | Checks whether the access mode b is valid for the given inputs. |
| [isAccessDecision_b](functions/isAccessDecision_b.md) | 🧩 ABI adapter / stand-in | Checks whether the access decision b is valid for the given inputs. |
| [allowedOf](functions/allowedOf.md) | 🧩 ABI adapter / stand-in | enforceAccess result extractors enforceAccess packs the EnforceOutcome struct into one i16 with little-endian byte order: low byte = allowed (0 or 1), high byte = logged (0 or 1). These helpers project the i16 back to Bits. |
| [loggedOf](functions/loggedOf.md) | 🧩 ABI adapter / stand-in | Tests whether `r` is well-formed. |
| [statusEngagedByte](functions/statusEngagedByte.md) | 🧩 ABI adapter / stand-in | Computes 8 bits from `s`. |
| [statusPayloadBytes](functions/statusPayloadBytes.md) | 🧩 ABI adapter / stand-in | Computes 16 bytes from `s`. |
| [asciiLower](functions/asciiLower.md) | — | URL host canonicalization — LLVM: (ptr host, i8 hostLen) -> i8 Mirrors cpp/src/decision.cpp::classifyCanonicalHost. The function lowercases ASCII host bytes, rejects userinfo-smuggling (`@`) in the consumed prefix, and classifies common aliases for IMDS / WireServer. |
| [hostEqLit10](functions/hostEqLit10.md) | — | Compares computed and provided values over `host` and `lit`, returning `True` on match. |
| [hostEqLit13](functions/hostEqLit13.md) | — | Compares computed and provided values over `host` and `lit`, returning `True` on match. |
| [hostEqLit15](functions/hostEqLit15.md) | — | Compares computed and provided values over `host` and `lit`, returning `True` on match. |
| [hostEqLit18](functions/hostEqLit18.md) | — | Compares computed and provided values over `host` and `lit`, returning `True` on match. |
| [hasUserinfo](functions/hasUserinfo.md) | — | Compares computed and provided values over `host` and `hostLen`, returning `True` on match. |
| [isImdsAlias](functions/isImdsAlias.md) | — | Checks whether the imds alias is valid by comparing the computed and expected values. |
| [isWireServerAlias](functions/isWireServerAlias.md) | — | Checks whether the wire server alias is valid by comparing the computed and expected values. |
| [classifyCanonicalHost](functions/classifyCanonicalHost.md) | ⚠️ Implemented, unverified | Evaluates 5 conditions on `host` and `hostLen` in priority order, returning the first applicable 8 bits. Defaults to `CH_Unknown_b` when no prior condition matches. |
| [hmacSha256](functions/hmacSha256.md) | — | Specs only use equality of HMAC outputs; the placeholder body is opaque to the solver, which models `hmacSha256` as an uninterpreted pure function for proof purposes. |
| [isValidSignature](functions/isValidSignature.md) | ⚠️ Implemented, unverified | Checks whether the signature is valid by comparing the computed and expected values. |
| [canonNormalized](functions/canonNormalized.md) | — | Compares computed and provided values over `n` and `b`, returning `True` on match. |
| [canonLenPrefixed](functions/canonLenPrefixed.md) | — | Bounded model writes a one-byte length tag followed by the FieldLen-byte field buffer. Production uses a 64-bit big-endian tag, but the injectivity argument that P23-P25 rely on is identical at any width. |
| [fieldNormalized](functions/fieldNormalized.md) | — | Compares computed and provided values over `f`, returning `True` on match. |
| [requestNormalized](functions/requestNormalized.md) | — | Tests whether `r` is well-formed. |
| [lpField](functions/lpField.md) | — | Computes 1 + StructFieldLen bytes from `f`. |
| [lpHeader](functions/lpHeader.md) | — | Computes 2 * (1 + StructFieldLen) bytes from `h`. |
| [canonicalizeS](functions/canonicalizeS.md) | 📄 Spec-only | Computes 3 * (1 + StructFieldLen) + MaxHeaders * 2 * (1 + StructFieldLen) + 8 bytes from `r`. |
| [verifierTimestamp_current](functions/verifierTimestamp_current.md) | — | Computes 64 bits from `r` and `_`. |
| [ksEngaged](functions/ksEngaged.md) | 🧩 ABI adapter / stand-in | Predicates the body reads out of the pre-state object image `pre` together with the requested key id `kid`. |
| [ksWasActive](functions/ksWasActive.md) | 🧩 ABI adapter / stand-in | Compares computed and provided values over `pre`, returning `True` on match. |
| [ksIdMatch](functions/ksIdMatch.md) | 🧩 ABI adapter / stand-in | Compares computed and provided values over `pre` and `kid`, returning `True` on match. |
| [keyStoreActivateRet](functions/keyStoreActivateRet.md) | 🧩 ABI adapter / stand-in | Returned ActivationResult byte — structurally identical to the C++ branch ladder, same branch order. |
| [keyStoreActivatePost](functions/keyStoreActivatePost.md) | 🧩 ABI adapter / stand-in | Post-state object image. The body mutates EXACTLY one byte — the `isActive` flag — and only on a matching activation of an inactive key; every other byte (mutex, keyId, secret, createdAt, engaged) is carried through unchanged. This is the monotone "latch": once set, `isActive` is never cleared by `activate`. |
| [newKeyStored](functions/newKeyStored.md) | 🧩 ABI adapter / stand-in | The body forces the incoming key INACTIVE before storing it. |
| [keyStoreProvisionPost](functions/keyStoreProvisionPost.md) | 🧩 ABI adapter / stand-in | Post-state object image. On the engaged (TOFU-locked) path nothing changes; on the empty path the 64-byte (inactivated) key is written into the optional payload at offset 80 and the engaged flag at 144 is set. Bytes 0..79 (mutex) and 145..151 (tail padding) are preserved. |
| [keyStoreProvisionRet](functions/keyStoreProvisionRet.md) | 🧩 ABI adapter / stand-in | Returned optional<EnrollmentKey> image (72 bytes: 64-byte payload · engaged@64 · 7 bytes tail). ONLY meaningful on the empty (fresh) path, where the body memcpy's the just-stored 72-byte optional out of the object — so the tail bytes mirror the object's tail (pre[145..151]). |
| [boolOfByte](functions/boolOfByte.md) | — | ── KeyStore read accessors — hasKey() / isActive() ─────────────────── Both take the lock, read the optional, and return a bool without mutating the object. hasKey() reports whether a key is engaged; isActive() reports engaged AND the key's isActive flag. |
| [keyStoreHasKeyRet](functions/keyStoreHasKeyRet.md) | 🧩 ABI adapter / stand-in | Cryptol indexes words MSB-first (`@ 0` is bit 7), while LLVM i8->i1 truncation keeps the LSB. Use `@ 7` to mirror the implementation. |
| [keyStoreIsActiveRet](functions/keyStoreIsActiveRet.md) | 🧩 ABI adapter / stand-in | Tests whether `pre` is well-formed. |
| [keyStoreCurrentRet](functions/keyStoreCurrentRet.md) | 📄 Spec-only | KeyStore::current returns the optional<EnrollmentKey> stored in `key_`. |

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
| [prove)](properties/prove).md) | KS1–PROV5 |
| [KeyStore read accessors — hasKey() / isActive()](properties/key-store-read-accessors-—-has-key()-is-active().md) | ACC1 |


## Additional Documentation

This site ships with additional hand-written documentation:

- [Formal Verification](extra_docs/index.md)
