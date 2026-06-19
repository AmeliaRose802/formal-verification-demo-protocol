# Coverage Matrix

> **What this page is.** Every function in the union of (the Cryptol model) and (the production codebase, as reported by the implementation inventory) is listed here exactly once, classified by one of five badges. Functions that are *implemented but unverified* are listed by default — silence is impossible. To drop a helper from this page, add it to `coverage.toml` under `[exclude].functions`; excluded names are reported as a count at the bottom, never silently dropped.

## Summary

| Badge | Meaning | Count |
|-------|---------|-------|
| ✅ | Proven | 5 |
| 🔲 | Proven (bounded) | 0 |
| 🧩 | Model abstraction | 11 |
| ⚠️ | Implemented, unverified | 28 |
| 📄 | Spec-only | 0 |
| | **Total** | **44** |

> ⚠️ **28 real functions have no proof and no declared abstraction.** These are the gaps a security review needs to inspect first.

## ⚠️ Implemented, unverified

Real production functions with no proof. This is the gap.

| Function | Source | Maps to | Notes |
|----------|--------|---------|-------|
| [`AC_AlreadyActive_b`](functions/AC_AlreadyActive_b.md) | model (SDEP_cpp) | — | — |
| [`AC_IoFailure_b`](functions/AC_IoFailure_b.md) | model (SDEP_cpp) | — | — |
| [`AC_Success_b`](functions/AC_Success_b.md) | model (SDEP_cpp) | — | — |
| [`AD_Allow_b`](functions/AD_Allow_b.md) | model (SDEP_cpp) | — | — |
| [`AD_Deny_b`](functions/AD_Deny_b.md) | model (SDEP_cpp) | — | — |
| [`AD_NoRule_b`](functions/AD_NoRule_b.md) | model (SDEP_cpp) | — | — |
| [`AM_Audit_b`](functions/AM_Audit_b.md) | model (SDEP_cpp) | — | — |
| [`AM_Enforce_b`](functions/AM_Enforce_b.md) | model (SDEP_cpp) | — | — |
| [`AM_Off_b`](functions/AM_Off_b.md) | model (SDEP_cpp) | — | — |
| [`AR_Authenticated_b`](functions/AR_Authenticated_b.md) | model (SDEP_cpp) | — | — |
| [`AR_Unauthenticated_b`](functions/AR_Unauthenticated_b.md) | model (SDEP_cpp) | — | — |
| [`AR_VaultUnavailable_b`](functions/AR_VaultUnavailable_b.md) | model (SDEP_cpp) | — | — |
| [`ER_Disabled_b`](functions/ER_Disabled_b.md) | model (SDEP_cpp) | — | not attempted |
| [`ER_InternalError_b`](functions/ER_InternalError_b.md) | model (SDEP_cpp) | — | — |
| [`ER_Succeeded_b`](functions/ER_Succeeded_b.md) | model (SDEP_cpp) | — | — |
| [`ER_Unauthorized_b`](functions/ER_Unauthorized_b.md) | model (SDEP_cpp) | — | — |
| [`FM_Disabled_b`](functions/FM_Disabled_b.md) | model (SDEP_cpp) | — | not attempted |
| [`FM_Enabled_b`](functions/FM_Enabled_b.md) | model (SDEP_cpp) | — | — |
| [`KV_IoError_b`](functions/KV_IoError_b.md) | model (SDEP_cpp) | — | — |
| [`KV_NotFound_b`](functions/KV_NotFound_b.md) | model (SDEP_cpp) | — | — |
| [`KV_Ok_b`](functions/KV_Ok_b.md) | model (SDEP_cpp) | — | — |
| [`PR_BadRequest_b`](functions/PR_BadRequest_b.md) | model (SDEP_cpp) | — | — |
| [`PR_Disabled_b`](functions/PR_Disabled_b.md) | model (SDEP_cpp) | — | not attempted |
| [`PR_InternalError_b`](functions/PR_InternalError_b.md) | model (SDEP_cpp) | — | — |
| [`PR_Succeeded_b`](functions/PR_Succeeded_b.md) | model (SDEP_cpp) | — | — |
| [`PR_Unauthorized_b`](functions/PR_Unauthorized_b.md) | model (SDEP_cpp) | — | — |
| [`canonicalizeS`](functions/canonicalizeS.md) | model (SDEP_cpp) | — | not attempted |
| [`getStatus`](functions/getStatus.md) | model + impl (SDEP_cpp ↔ cpp) | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · failed: verify script exited with code 2 |

## ✅ Proven

Machine-checked equivalence on all ABI inputs.

| Function | Source | Maps to | Notes |
|----------|--------|---------|-------|
| [`authenticate`](functions/authenticate.md) | model + impl (SDEP_cpp ↔ cpp) | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`enforceAccess`](functions/enforceAccess.md) | model + impl (SDEP_cpp ↔ cpp) | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`enrollDevice`](functions/enrollDevice.md) | model + impl (SDEP_cpp ↔ cpp) | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`isValidRequestDate`](functions/isValidRequestDate.md) | model + impl (SDEP_cpp ↔ cpp) | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |
| [`provisionKey`](functions/provisionKey.md) | model + impl (SDEP_cpp ↔ cpp) | — | `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp` · `z3` |

## 🧩 Model abstraction

Cryptol definitions with no real-code counterpart (placeholders, uninterpreted functions, ABI adapters). The notes column explains what each one stands in for.

| Function | Source | Maps to | Notes |
|----------|--------|---------|-------|
| [`allowedOf`](functions/allowedOf.md) | model (SDEP_cpp) | — | Accessor over the packed enforceAccess outcome; modeling helper, exercised via the enforceAccess proof. · not attempted |
| [`canonicalize_lp_post`](functions/canonicalize_lp_post.md) | model (SDEP_cpp) | — | Bounded (MAX_LEN) length-prefix encoder model; the production canonicalize_lp in cpp/src/decision.cpp is proven separately under the length bound. · not attempted |
| [`canonicalize_lp_ret`](functions/canonicalize_lp_ret.md) | model (SDEP_cpp) | — | Byte-count model for the bounded length-prefix encoder; paired with canonicalize_lp_post. · not attempted |
| [`isAccessDecision_b`](functions/isAccessDecision_b.md) | model (SDEP_cpp) | — | Well-formedness predicate over the AccessDecision ABI byte — a modeling precondition, not standalone code. · not attempted |
| [`isAccessMode_b`](functions/isAccessMode_b.md) | model (SDEP_cpp) | — | Well-formedness predicate over the AccessMode ABI byte — a modeling precondition, not standalone code. · not attempted |
| [`isActivationResult_b`](functions/isActivationResult_b.md) | model (SDEP_cpp) | — | Well-formedness predicate over the ActivationResult ABI byte — a modeling precondition, not standalone code. · not attempted |
| [`isAuthResult_b`](functions/isAuthResult_b.md) | model (SDEP_cpp) | — | Well-formedness predicate over the AuthResult ABI byte — a modeling precondition, not standalone code. · not attempted |
| [`isKeyVaultResult_b`](functions/isKeyVaultResult_b.md) | model (SDEP_cpp) | — | Well-formedness predicate over the KeyVaultResult ABI byte — a modeling precondition used inside the proven decision functions, not a standalone implementation. · not attempted |
| [`loggedOf`](functions/loggedOf.md) | model (SDEP_cpp) | — | Accessor over the packed enforceAccess outcome; modeling helper, exercised via the enforceAccess proof. · not attempted |
| [`statusEngagedByte`](functions/statusEngagedByte.md) | model (SDEP_cpp) | — | Accessor over the getStatus EnrollmentStatus bytes; modeling helper. · not attempted |
| [`statusPayloadBytes`](functions/statusPayloadBytes.md) | model (SDEP_cpp) | — | Accessor over the getStatus EnrollmentStatus bytes; modeling helper. · not attempted |

