---
uid: SDEP.functions
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
- [hmacSha256](hmacSha256.md)
- [isValidSignature](isValidSignature.md)
- [enforceAccess](enforceAccess.md)
- [getStatus](getStatus.md)
- [canonNormalized](canonNormalized.md)
- [canonLenPrefixed](canonLenPrefixed.md)
- [fieldNormalized](fieldNormalized.md)
- [requestNormalized](requestNormalized.md)
- [lpField](lpField.md)
- [lpHeader](lpHeader.md)
- [canonicalizeS](canonicalizeS.md)
- [verifierTimestamp_current](verifierTimestamp_current.md)

