---
uid: SDEP_cpp.functions
title: Functions
---

# Functions

> **What `✓` means here.** Each function below is a Cryptol *shim* that mirrors the production C++/Rust implementation at the bit level. A `✓` badge means SAW has discharged an `llvm_verify` / `mir_verify` proof showing the implementation and the Cryptol shim produce identical outputs on **all** inputs. A `✗` means the proof failed, errored, or has not yet been attempted. The security [Properties](../properties/) are proven against the shim, and transfer to the implementation only as far as these function-level equivalence proofs go — see each property page's *Implementation equivalence* callout.

See the [home page](../index.md#functions) for the full Function · Status · Description table.

## All functions

- [provisionKey](provisionKey.md)
- [enrollDevice](enrollDevice.md)
- [authenticate](authenticate.md)
- [isValidRequestDate](isValidRequestDate.md)
- [packOutcome](packOutcome.md)
- [enforceAccess](enforceAccess.md)
- [getStatus](getStatus.md)
- [canonicalize_lp_post](canonicalize_lp_post.md)
- [canonicalize_lp_ret](canonicalize_lp_ret.md)
- [isKeyVaultResult_b](isKeyVaultResult_b.md)
- [isAuthResult_b](isAuthResult_b.md)
- [isActivationResult_b](isActivationResult_b.md)
- [isAccessMode_b](isAccessMode_b.md)
- [isAccessDecision_b](isAccessDecision_b.md)
- [allowedOf](allowedOf.md)
- [loggedOf](loggedOf.md)
- [statusEngagedByte](statusEngagedByte.md)
- [statusPayloadBytes](statusPayloadBytes.md)
- [hmacSha256](hmacSha256.md)
- [isValidSignature](isValidSignature.md)
- [lpFieldNormalized](lpFieldNormalized.md)
- [encodeLP2](encodeLP2.md)
- [decodeLP2](decodeLP2.md)
- [itemsNormalized](itemsNormalized.md)
- [encodeRecs](encodeRecs.md)
- [decodeRecs](decodeRecs.md)
- [fieldNormalized](fieldNormalized.md)
- [requestNormalized](requestNormalized.md)
- [lpField](lpField.md)
- [lpHeader](lpHeader.md)
- [canonicalizeS](canonicalizeS.md)
- [verifierTimestamp_current](verifierTimestamp_current.md)
- [ksEngaged](ksEngaged.md)
- [ksWasActive](ksWasActive.md)
- [ksIdMatch](ksIdMatch.md)
- [keyStoreActivateRet](keyStoreActivateRet.md)
- [keyStoreActivatePost](keyStoreActivatePost.md)

