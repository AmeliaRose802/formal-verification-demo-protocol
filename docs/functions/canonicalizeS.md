# `canonicalizeS`  ✗

### Signature

**Parameters**
- `r`: [StructuredRequest](../types.md#structuredrequest)

**Returns**
- [3 * (1 + [StructFieldLen](../types.md#structfieldlen)) + [MaxHeaders](../types.md#maxheaders) * 2 * (1 + [StructFieldLen](../types.md#structfieldlen)) + 8][8]

<details><summary>Raw signature</summary>

`StructuredRequest -> [3 * (1 + StructFieldLen) + MaxHeaders * 2 * (1 + StructFieldLen) + 8][8]`

</details>

### Formal definition (Cryptol)

```haskell
canonicalizeS r =
    lpField r.method
  # lpField r.body
  # join [ lpHeader h | h <- r.hdrs ]
  # lpField r.path
  # (split r.timestamp : [8][8])
```

> **Verification failed:** saw-spec-gen failed

Computes 3 * (1 + [StructFieldLen](../types.md#structfieldlen)) + [MaxHeaders](../types.md#maxheaders) * 2 * (1 + [StructFieldLen](../types.md#structfieldlen)) + 8 bytes from `r`.

### Related Properties
- [P28 — Auth Header Value Excluded From Canonicalization](../properties/structured-request-properties.md#p28--auth-header-value-excluded-from-canonicalization)

