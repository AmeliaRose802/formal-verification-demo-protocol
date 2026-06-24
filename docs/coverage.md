# Coverage Matrix

> **What this page is.** Every function in the union of (the Cryptol model) and (the production codebase, as reported by the implementation inventory) is listed here exactly once, classified by one of five badges. Functions that are *implemented but unverified* are listed by default — silence is impossible. To drop a helper from this page, add it to `coverage.toml` under `[exclude].functions`; excluded names are reported as a count at the bottom, never silently dropped.

## Summary

| Badge | Meaning | Count |
|-------|---------|-------|
| ✅ | Proven | 6 |
| 🔲 | Proven (bounded) | 0 |
| 🔒 | Trusted assumption | 2 |
| 🧩 | ABI adapter / stand-in | 32 |
| ⚠️ | Implemented, unverified | 0 |
| 📄 | Spec-only | 27 |
| | **Total** | **67** |

## ✅ Proven

Machine-checked equivalence on all ABI inputs.

| Function | Source | Maps to | Reason codes | Notes |
|----------|--------|---------|--------------|-------|
| [`authenticate`](functions/authenticate.md) | model + impl (SDEP_cpp ↔ cpp) | — | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`enforceAccess`](functions/enforceAccess.md) | model + impl (SDEP_cpp ↔ cpp) | — | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`enrollDevice`](functions/enrollDevice.md) | model + impl (SDEP_cpp ↔ cpp) | — | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`getStatus`](functions/getStatus.md) | model + impl (SDEP_cpp ↔ cpp) | — | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`isValidRequestDate`](functions/isValidRequestDate.md) | model + impl (SDEP_cpp ↔ cpp) | — | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`provisionKey`](functions/provisionKey.md) | model + impl (SDEP_cpp ↔ cpp) | — | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |

## 🔒 Trusted assumption

Assumed contracts for real external dependencies. These are explicit trust boundaries, not machine-checked equivalence proofs.

| Function | Source | Maps to | Reason codes | Notes |
|----------|--------|---------|--------------|-------|
| [`hmacSha256`](functions/hmacSha256.md) | model (SDEP_cpp) | — | — | deliberate override — the real HMAC-SHA256 in cpp/src is an assumed contract, not proven equal to this algebraic placeholder. |
| [`isValidSignature`](functions/isValidSignature.md) | model (SDEP_cpp) | — | — | deliberate override — signature verification is an assumed contract over the real HMAC. |

## 🧩 ABI adapter / stand-in

Cryptol definitions with no real-code counterpart (placeholders, uninterpreted functions, ABI adapters). The notes column explains what each one stands in for.

| Function | Source | Maps to | Reason codes | Notes |
|----------|--------|---------|--------------|-------|
| [`allowedOf`](functions/allowedOf.md) | model (SDEP_cpp) | — | — | Accessor over the packed enforceAccess outcome; modeling helper, exercised via the enforceAccess proof. · not attempted |
| [`canonicalize_lp_post`](functions/canonicalize_lp_post.md) | model (SDEP_cpp) | — | — | Bounded (MAX_LEN) length-prefix encoder model; the production canonicalize_lp in cpp/src/decision.cpp is proven separately under the length bound. · not attempted |
| [`canonicalize_lp_ret`](functions/canonicalize_lp_ret.md) | model (SDEP_cpp) | — | — | Byte-count model for the bounded length-prefix encoder; paired with canonicalize_lp_post. · not attempted |
| [`decodeLP2`](functions/decodeLP2.md) | model (SDEP_cpp) | — | — | bounded two-field length-prefixed decoder; round-trip with encodeLP2 underpins P23-P25. |
| [`decodeRecs`](functions/decodeRecs.md) | model (SDEP_cpp) | — | — | bounded record-list decoder; round-trip with encodeRecs underpins the record smuggling-collision proofs. |
| [`encodeLP2`](functions/encodeLP2.md) | model (SDEP_cpp) | — | — | bounded two-field length-prefixed encoder standing in for the production canonicalizer byte layout. |
| [`encodeRecs`](functions/encodeRecs.md) | model (SDEP_cpp) | — | — | bounded record-list encoder (count + length-prefixed items) modeling header/query MAP serialization. |
| [`fieldNormalized`](functions/fieldNormalized.md) | model (SDEP_cpp) | — | — | well-formedness predicate over the structured-request field model (trailing bytes past len are zero). |
| [`isAccessDecision_b`](functions/isAccessDecision_b.md) | model (SDEP_cpp) | — | — | Well-formedness predicate over the AccessDecision ABI byte — a modeling precondition, not standalone code. · not attempted |
| [`isAccessMode_b`](functions/isAccessMode_b.md) | model (SDEP_cpp) | — | — | Well-formedness predicate over the AccessMode ABI byte — a modeling precondition, not standalone code. · not attempted |
| [`isActivationResult_b`](functions/isActivationResult_b.md) | model (SDEP_cpp) | — | — | Well-formedness predicate over the ActivationResult ABI byte — a modeling precondition, not standalone code. · not attempted |
| [`isAuthResult_b`](functions/isAuthResult_b.md) | model (SDEP_cpp) | — | — | Well-formedness predicate over the AuthResult ABI byte — a modeling precondition, not standalone code. · not attempted |
| [`isKeyVaultResult_b`](functions/isKeyVaultResult_b.md) | model (SDEP_cpp) | — | — | Well-formedness predicate over the KeyVaultResult ABI byte — a modeling precondition used inside the proven decision functions, not a standalone implementation. · not attempted |
| [`itemsNormalized`](functions/itemsNormalized.md) | model (SDEP_cpp) | — | — | well-formedness predicate for a bounded record-list (count tag + length-prefixed items). |
| [`keyStoreActivatePost`](functions/keyStoreActivatePost.md) | model (SDEP_cpp) | — | — | Cryptol model of KeyStore::activate's post-state (one-byte isActive latch); implementation-level SAW proof pending. · not attempted |
| [`keyStoreActivateRet`](functions/keyStoreActivateRet.md) | model (SDEP_cpp) | — | — | Cryptol model of KeyStore::activate's result ladder; implementation-level SAW proof pending. · not attempted |
| [`ksEngaged`](functions/ksEngaged.md) | model (SDEP_cpp) | — | — | model predicate reading the KeyStore object image — stands in for the C++ field reads. · not attempted |
| [`ksIdMatch`](functions/ksIdMatch.md) | model (SDEP_cpp) | — | — | model predicate (keyId equality) standing in for the C++ Uuid::operator==. · not attempted |
| [`ksWasActive`](functions/ksWasActive.md) | model (SDEP_cpp) | — | — | model predicate (isActive byte) standing in for the C++ field read. · not attempted |
| [`ks_off_engaged`](functions/ks_off_engaged.md) | model (SDEP_cpp) | — | — | byte offset of the optional engaged flag in the KeyStore object image; an addressing constant for the model, not executable code. · not attempted |
| [`ks_off_isActive`](functions/ks_off_isActive.md) | model (SDEP_cpp) | — | — | byte offset of key_->isActive in the KeyStore object image; an addressing constant for the model, not executable code. · not attempted |
| [`ks_off_keyId`](functions/ks_off_keyId.md) | model (SDEP_cpp) | — | — | byte offset of key_->keyId in the KeyStore object image; an addressing constant for the model, not executable code. · not attempted |
| [`loggedOf`](functions/loggedOf.md) | model (SDEP_cpp) | — | — | Accessor over the packed enforceAccess outcome; modeling helper, exercised via the enforceAccess proof. · not attempted |
| [`lpField`](functions/lpField.md) | model (SDEP_cpp) | — | — | length-prefix encoder stand-in for a single structured-request field. |
| [`lpFieldNormalized`](functions/lpFieldNormalized.md) | model (SDEP_cpp) | — | — | well-formedness predicate (len in range, tail zero-padded) for a bounded length-prefixed field. |
| [`lpHeader`](functions/lpHeader.md) | model (SDEP_cpp) | — | — | length-prefix encoder stand-in for a request header (Authorization headers are excluded from the signed payload). |
| [`lpZeroField`](functions/lpZeroField.md) | model (SDEP_cpp) | — | — | zero/empty length-prefixed field — initial value for the bounded canonicalization model. |
| [`packOutcome`](functions/packOutcome.md) | model (SDEP_cpp) | — | — | bit-packing stand-in for the MSVC ABI's i16 aggregate return; models the byte layout, not a proven function. |
| [`requestNormalized`](functions/requestNormalized.md) | model (SDEP_cpp) | — | — | well-formedness predicate lifting fieldNormalized over every field of a structured request. |
| [`statusEngagedByte`](functions/statusEngagedByte.md) | model (SDEP_cpp) | — | — | Accessor over the getStatus EnrollmentStatus bytes; modeling helper. · not attempted |
| [`statusPayloadBytes`](functions/statusPayloadBytes.md) | model (SDEP_cpp) | — | — | Accessor over the getStatus EnrollmentStatus bytes; modeling helper. · not attempted |
| [`verifierTimestamp_current`](functions/verifierTimestamp_current.md) | model (SDEP_cpp) | — | — | modeling stand-in for the verifier's clock source; uses the request-bound timestamp in the bounded model. |

## 📄 Spec-only

Lives in the model on purpose (gap-exhibiting reference functions, etc.) — no implementation expected.

| Function | Source | Maps to | Reason codes | Notes |
|----------|--------|---------|--------------|-------|
| [`AC_AlreadyActive_b`](functions/AC_AlreadyActive_b.md) | model (SDEP_cpp) | — | — | — |
| [`AC_IoFailure_b`](functions/AC_IoFailure_b.md) | model (SDEP_cpp) | — | — | — |
| [`AC_Success_b`](functions/AC_Success_b.md) | model (SDEP_cpp) | — | — | — |
| [`AD_Allow_b`](functions/AD_Allow_b.md) | model (SDEP_cpp) | — | — | — |
| [`AD_Deny_b`](functions/AD_Deny_b.md) | model (SDEP_cpp) | — | — | — |
| [`AD_NoRule_b`](functions/AD_NoRule_b.md) | model (SDEP_cpp) | — | — | — |
| [`AM_Audit_b`](functions/AM_Audit_b.md) | model (SDEP_cpp) | — | — | — |
| [`AM_Enforce_b`](functions/AM_Enforce_b.md) | model (SDEP_cpp) | — | — | — |
| [`AM_Off_b`](functions/AM_Off_b.md) | model (SDEP_cpp) | — | — | — |
| [`AR_Authenticated_b`](functions/AR_Authenticated_b.md) | model (SDEP_cpp) | — | — | — |
| [`AR_Unauthenticated_b`](functions/AR_Unauthenticated_b.md) | model (SDEP_cpp) | — | — | — |
| [`AR_VaultUnavailable_b`](functions/AR_VaultUnavailable_b.md) | model (SDEP_cpp) | — | — | — |
| [`ER_Disabled_b`](functions/ER_Disabled_b.md) | model (SDEP_cpp) | — | — | not attempted |
| [`ER_InternalError_b`](functions/ER_InternalError_b.md) | model (SDEP_cpp) | — | — | — |
| [`ER_Succeeded_b`](functions/ER_Succeeded_b.md) | model (SDEP_cpp) | — | — | — |
| [`ER_Unauthorized_b`](functions/ER_Unauthorized_b.md) | model (SDEP_cpp) | — | — | — |
| [`FM_Disabled_b`](functions/FM_Disabled_b.md) | model (SDEP_cpp) | — | — | not attempted |
| [`FM_Enabled_b`](functions/FM_Enabled_b.md) | model (SDEP_cpp) | — | — | — |
| [`KV_IoError_b`](functions/KV_IoError_b.md) | model (SDEP_cpp) | — | — | — |
| [`KV_NotFound_b`](functions/KV_NotFound_b.md) | model (SDEP_cpp) | — | — | — |
| [`KV_Ok_b`](functions/KV_Ok_b.md) | model (SDEP_cpp) | — | — | — |
| [`PR_BadRequest_b`](functions/PR_BadRequest_b.md) | model (SDEP_cpp) | — | — | — |
| [`PR_Disabled_b`](functions/PR_Disabled_b.md) | model (SDEP_cpp) | — | — | not attempted |
| [`PR_InternalError_b`](functions/PR_InternalError_b.md) | model (SDEP_cpp) | — | — | — |
| [`PR_Succeeded_b`](functions/PR_Succeeded_b.md) | model (SDEP_cpp) | — | — | — |
| [`PR_Unauthorized_b`](functions/PR_Unauthorized_b.md) | model (SDEP_cpp) | — | — | — |
| [`canonicalizeS`](functions/canonicalizeS.md) | model (SDEP_cpp) | — | — | not attempted |

