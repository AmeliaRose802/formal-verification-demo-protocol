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
**Type:** `[4]` — `4`-bit value

── Variable-length-within-a-bound canonicalization model (P23-P25) ────── This is an HONEST bounded model of the production length-prefix framing in cpp/src/canonical.cpp. The earlier revision of this model encoded each field at a FIXED width (`[nm] # m # [nb] # b` with m,b : [16][8]).

Used by: [`encodeLP2`](functions/encodeLP2.md), [`decodeLP2`](functions/decodeLP2.md)

### IndexWidth
**Type:** `[8]` — `8`-bit value

Length-tag / index width in bits. One byte addresses any length <= 255.

Used by: [`itemsNormalized`](functions/itemsNormalized.md), [`encodeRecs`](functions/encodeRecs.md), [`decodeRecs`](functions/decodeRecs.md)

### LpField
A bounded variable-length field: a logical length `len` and a fixed-size storage buffer `buf`. "Normalized" means bytes past `len` are zero, so two fields differing only in unused padding are the same logical value (any collision the solver finds is therefore real).


| Field | Type | Description |
|-------|------|-------------|
| `len` | [IndexWidth] | `IndexWidth`-bit value |
| `buf` | [FieldLen][8] | Buffer of `FieldLen` bytes |

Used by: [`lpZeroField`](functions/lpZeroField.md), [`lpFieldNormalized`](functions/lpFieldNormalized.md), [`encodeLP2`](functions/encodeLP2.md), [`decodeLP2`](functions/decodeLP2.md), [`itemsNormalized`](functions/itemsNormalized.md), [`encodeRecs`](functions/encodeRecs.md), [`decodeRecs`](functions/decodeRecs.md)

### MaxItems
**Type:** `[2]` — `2`-bit value

Number of length-prefixed items a record-list (header / query MAP) may carry in the bounded model. Two is enough to exhibit boundary-shifting and record add/drop ("smuggling") collisions.

### RecBufLen
**Type:** `[1 + MaxItems * (1 + FieldLen)]` — `1 + MaxItems * (1 + FieldLen)`-bit value

Total bytes of the record-list encoding: a count tag plus, per item, a length tag and its FieldLen-byte slot.

Used by: [`encodeRecs`](functions/encodeRecs.md), [`decodeRecs`](functions/decodeRecs.md)

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

Bounded check over the configured finite model. Bounded check over the configured finite model. Offsets into the 152-byte KeyStore image.

Used by: [`ksEngaged`](functions/ksEngaged.md), [`ksWasActive`](functions/ksWasActive.md), [`ksIdMatch`](functions/ksIdMatch.md), [`keyStoreActivateRet`](functions/keyStoreActivateRet.md), [`keyStoreActivatePost`](functions/keyStoreActivatePost.md)

