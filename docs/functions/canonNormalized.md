# `canonNormalized`  `internal helper`

### Signature

**Parameters**
- `n`: [[IndexWidth](../types.md#indexwidth)]
- `b`: [[FieldLen](../types.md#fieldlen)][8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[IndexWidth] -> [FieldLen][8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
canonNormalized n b =
      and [ (i >= n) ==> ((b @ i) == 0)
          | i <- ([0 .. FieldLen - 1] : [FieldLen][IndexWidth]) ]
```

Compares computed and provided values over `n` and `b`, returning `True` on match.

### Related Properties
- [P23 — Distinct Requests Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p23--distinct-requests-have-distinct-canonical-bytes)
- [P24 — Distinct Headers Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p24--distinct-headers-have-distinct-canonical-bytes)
- [P25 — Distinct Queries Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p25--distinct-queries-have-distinct-canonical-bytes)

