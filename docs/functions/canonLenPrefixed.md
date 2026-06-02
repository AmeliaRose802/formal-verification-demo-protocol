# `canonLenPrefixed`  `internal helper`

### Signature

**Parameters**
- `nm`: [[IndexWidth](../types.md#indexwidth)]
- `m`: [[FieldLen](../types.md#fieldlen)][8]
- `nb`: [[IndexWidth](../types.md#indexwidth)]
- `b`: [[FieldLen](../types.md#fieldlen)][8]

**Returns**
- [2 * [FieldLen](../types.md#fieldlen) + 2][8]

<details><summary>Raw signature</summary>

`[IndexWidth] -> [FieldLen][8] -> [IndexWidth] -> [FieldLen][8] -> [2 * FieldLen + 2][8]`

</details>

### Formal definition (Cryptol)

```haskell
canonLenPrefixed nm m nb b = [nm] # m # [nb] # b
```

Bounded model writes a one-byte length tag followed by the [FieldLen](../types.md#fieldlen)-byte
field buffer. Production uses a 64-bit big-endian tag, but the
injectivity argument that [P23](../properties/canonicalization-byte-injectivity.md#p23--distinct-requests-have-distinct-canonical-bytes)-[P25](../properties/canonicalization-byte-injectivity.md#p25--distinct-queries-have-distinct-canonical-bytes) rely on is identical at any width.

### Related Properties
- [P23 — Distinct Requests Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p23--distinct-requests-have-distinct-canonical-bytes)
- [P24 — Distinct Headers Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p24--distinct-headers-have-distinct-canonical-bytes)
- [P25 — Distinct Queries Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p25--distinct-queries-have-distinct-canonical-bytes)

