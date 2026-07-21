# Types

### HmacKey
**Type:** `[256]` — `256`-bit value

256-bit HMAC-SHA256 signing key shared between client and verifier.

Used by: [`hmacSha256`](functions/hmacSha256.md), [`isValidSignature`](functions/isValidSignature.md)

### HmacTag
**Type:** `[256]` — `256`-bit value

256-bit HMAC-SHA256 authentication tag produced by `hmacSha256`.

Used by: [`hmacSha256`](functions/hmacSha256.md), [`isValidSignature`](functions/isValidSignature.md)

### Request
**Type:** `[256]` — `256`-bit value

Abstract 256-bit handle for a canonicalized request payload. The HMAC properties only ever compare `Request` values for equality, so its internal structure is irrelevant at this layer.

Used by: [`hmacSha256`](functions/hmacSha256.md), [`isValidSignature`](functions/isValidSignature.md)

### FieldLen
**Type:** `[16]` — `16`-bit value

Field length in bytes for the length-prefixed canonicalizer (bounded-model parameter; production uses `std::size_t` fields).

Used by: [`canonNormalized`](functions/canonNormalized.md), [`canonLenPrefixed`](functions/canonLenPrefixed.md)

### IndexWidth
**Type:** `[8]` — `8`-bit value

Index/length width in bits. One byte holds any length up to FieldLen = 16, matching the 8-bit tag used by the bounded canonicalizer.

Used by: [`canonNormalized`](functions/canonNormalized.md), [`canonLenPrefixed`](functions/canonLenPrefixed.md)

### StructFieldLen
**Type:** `[2]` — `2`-bit value

Per-field byte bound for the structured bounded-model checking layer.

Used by: [`lpField`](functions/lpField.md), [`lpHeader`](functions/lpHeader.md), [`canonicalizeS`](functions/canonicalizeS.md)

### MaxHeaders
**Type:** `[2]` — `2`-bit value

Maximum number of headers carried by a structured request in the bounded model. Two is enough to exhibit every interesting boundary-shifting bug between the header list and adjacent fields.

Used by: [`canonicalizeS`](functions/canonicalizeS.md)

### Field
A length-prefixed byte buffer: an explicit length `len` plus a fixed-size storage array `buf`. For `fieldNormalized` requests the trailing bytes of `buf` past `len` are required to be zero.


| Field | Type | Description |
|-------|------|-------------|
| `len` | [IndexWidth] | `IndexWidth`-bit value |
| `buf` | [StructFieldLen][8] | Buffer of `StructFieldLen` bytes |

Used by: [`fieldNormalized`](functions/fieldNormalized.md), [`lpField`](functions/lpField.md)

### Header
An HTTP-style header attached to a structured request: name, value, and an `isAuth` flag. The flag marks the Authorization header so the canonicalizer can exclude its value from the signed payload.


| Field | Type | Description |
|-------|------|-------------|
| `name` | Field | `Field` value |
| `value` | Field | `Field` value |
| `isAuth` | Bit | Boolean flag |

Used by: [`lpHeader`](functions/lpHeader.md)

### StructuredRequest
Structural request shape used by the canonicalizer model: HTTP method, path, body, the request-bound timestamp, and a fixed-size vector of headers. This is the layer the P28+ properties reason about, in contrast with the opaque `Request = [256]` used by the abstract HMAC properties.


| Field | Type | Description |
|-------|------|-------------|
| `method` | Field | `Field` value |
| `path` | Field | `Field` value |
| `body` | Field | `Field` value |
| `timestamp` | [64] | `64`-bit value |
| `hdrs` | [MaxHeaders]Header | Array of `MaxHeaders` `Header` values |

Used by: [`requestNormalized`](functions/requestNormalized.md), [`canonicalizeS`](functions/canonicalizeS.md), [`verifierTimestamp_current`](functions/verifierTimestamp_current.md)

### KS_BYTES
**Type:** `[152]` — `152`-bit value

Bounded check over the configured finite model. Offsets into the 152-byte KeyStore image.

Used by: [`ksEngaged`](functions/ksEngaged.md), [`ksWasActive`](functions/ksWasActive.md), [`ksIdMatch`](functions/ksIdMatch.md), [`keyStoreActivateRet`](functions/keyStoreActivateRet.md), [`keyStoreActivatePost`](functions/keyStoreActivatePost.md), [`keyStoreProvisionPost`](functions/keyStoreProvisionPost.md), [`keyStoreProvisionRet`](functions/keyStoreProvisionRet.md), [`keyStoreHasKeyRet`](functions/keyStoreHasKeyRet.md), [`keyStoreIsActiveRet`](functions/keyStoreIsActiveRet.md), [`keyStoreCurrentRet`](functions/keyStoreCurrentRet.md)

