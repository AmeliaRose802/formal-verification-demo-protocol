# Functions

| Function | Description |
|----------|-------------|
| [provisionKey](provisionKey.md) | Evaluates 5 conditions on `fleetEnabled`, `validRequest`, `vaultResult`, and `keyIsActive` in priority order, returning the first applicable `ProvisionResult`. Defaults to `PR_Succeeded` when no prior condition matches. |
| [enrollDevice](enrollDevice.md) | Evaluates 7 conditions on `fleetEnabled`, `validMetadata`, `authResult`, and `activationResult` in priority order, returning the first applicable `EnrollmentResult`. Defaults to `ER_Unauthorized` when no prior condition matches. |
| [authenticate](authenticate.md) | Returns `True` only when all of `dateValid`, `signatureValid`, and `claimsValid` are true. |
| [isValidRequestDate](isValidRequestDate.md) | Checks whether the request date is valid: validates a bounded condition over `requestTs`, `currentTime`, and `windowSeconds`. |
| [hmacSha256](hmacSha256.md) | Uninterpreted in proofs (SAW can treat this as a Cryptol primitive). |
| [isValidSignature](isValidSignature.md) | Checks whether the signature is valid by comparing the computed and expected values. |
| [enforceAccess](enforceAccess.md) | Evaluates 6 conditions on `mode` and `decision` in priority order, returning the first applicable a tuple. Defaults to `(True, False)` when no prior condition matches. |
| [getStatus](getStatus.md) | Constructs `EnrollmentStatus` from the given inputs. |
| [canonNormalized](canonNormalized.md) | A field is normalized iff bytes at indices >= n are zero. This is the invariant the C++ / Rust code maintains implicitly (it only reads the first n bytes); making it explicit keeps logically-distinct requests distinct as Cryptol values, so any collision the solver finds is a *real* one. |
| [canonLenPrefixed](canonLenPrefixed.md) | Length-prefixed canonicalization. Each variable-length field is preceded by its length tag: a parser reads the tag, then exactly that many bytes, then the next tag, then exactly that many bytes. No byte inside any field can be misread as a boundary, so the encoding is structurally injective. |
| [fieldNormalized](fieldNormalized.md) | Compares computed and provided values over `f`, returning `True` on match. |
| [requestNormalized](requestNormalized.md) | Tests whether `r` is well-formed. |
| [lpField](lpField.md) | Length-prefix a Field as [len-byte] # buf. |
| [lpHeader](lpHeader.md) | Length-prefix a header pair OR emit a constant-size all-zero placeholder if it is the auth header. Fixed output size keeps canonicalizeS Cryptol- statable; the placeholder content is irrelevant because the encoder elides auth headers regardless of their value. |
| [canonicalizeS](canonicalizeS.md) | Concrete canonicalize: length-prefixed method, body, headers (with auth-header exclusion), path, then the 8-byte big-endian timestamp. |
| [verifierTimestamp_current](verifierTimestamp_current.md) | The timestamp the verifier validates must equal the timestamp inside the signed request — otherwise an attacker can replay a stale signed request with a fresh "current time" supplied by the caller and pass the freshness check despite the signature being over old bytes. |

### Call Graph

```mermaid
graph LR
  authenticate["authenticate"]
  click authenticate "functions/authenticate.md" "authenticate"
  canonLenPrefixed["canonLenPrefixed"]
  click canonLenPrefixed "functions/canonLenPrefixed.md" "canonLenPrefixed"
  canonNormalized["canonNormalized"]
  click canonNormalized "functions/canonNormalized.md" "canonNormalized"
  canonicalizeS["canonicalizeS"]
  click canonicalizeS "functions/canonicalizeS.md" "canonicalizeS"
  enforceAccess["enforceAccess"]:::decision
  click enforceAccess "functions/enforceAccess.md" "enforceAccess"
  enrollDevice["enrollDevice"]:::decision
  click enrollDevice "functions/enrollDevice.md" "enrollDevice"
  fieldNormalized["fieldNormalized"]
  click fieldNormalized "functions/fieldNormalized.md" "fieldNormalized"
  getStatus["getStatus"]
  click getStatus "functions/getStatus.md" "getStatus"
  hmacSha256["hmacSha256"]
  click hmacSha256 "functions/hmacSha256.md" "hmacSha256"
  isValidRequestDate["isValidRequestDate"]
  click isValidRequestDate "functions/isValidRequestDate.md" "isValidRequestDate"
  isValidSignature["isValidSignature"]
  click isValidSignature "functions/isValidSignature.md" "isValidSignature"
  lpField["lpField"]
  click lpField "functions/lpField.md" "lpField"
  lpHeader["lpHeader"]
  click lpHeader "functions/lpHeader.md" "lpHeader"
  provisionKey["provisionKey"]:::decision
  click provisionKey "functions/provisionKey.md" "provisionKey"
  requestNormalized["requestNormalized"]
  click requestNormalized "functions/requestNormalized.md" "requestNormalized"
  verifierTimestamp_current["verifierTimestamp_current"]
  click verifierTimestamp_current "functions/verifierTimestamp_current.md" "verifierTimestamp_current"
  canonicalizeS --> lpField
  canonicalizeS --> lpHeader
  isValidSignature --> hmacSha256
  lpHeader --> lpField
  requestNormalized --> fieldNormalized
  classDef default fill:#f8fafc,stroke:#475569,stroke-width:1.5px,color:#0f172a
  classDef decision fill:#ecfeff,stroke:#0e7490,stroke-width:1.5px,color:#164e63
  classDef stub fill:#fff7ed,stroke:#c2410c,stroke-width:1.5px,stroke-dasharray: 5 5,color:#7c2d12
```

**Key:** 🔵 function · 🟢 decision

