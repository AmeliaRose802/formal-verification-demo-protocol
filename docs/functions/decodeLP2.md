# `decodeLP2`  🧩  `internal helper`

> 🧩 **Model abstraction.** bounded two-field length-prefixed decoder; round-trip with encodeLP2 underpins P23-P25. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `buf`: [2 * [FieldLen](../types.md#fieldlen) + 2][8]

**Returns**
- ([LpField](../types.md#lpfield), [LpField](../types.md#lpfield))

<details><summary>Raw signature</summary>

`[2 * FieldLen + 2][8] -> (LpField, LpField)`

</details>

### Formal definition (Cryptol)

```haskell
decodeLP2 buf = (f, g)
    where
      bl   = (`(2 * FieldLen + 2) : [IndexWidth])
      nf   = buf @ 0
      fbuf = [ if j < nf then buf @ ((1 + j) % bl) else 0
             | j <- ([0 .. FieldLen - 1] : [FieldLen][IndexWidth]) ]
      ng   = buf @ ((nf + 1) % bl)
      gbuf = [ if j < ng then buf @ ((nf + 2 + j) % bl) else 0
             | j <- ([0 .. FieldLen - 1] : [FieldLen][IndexWidth]) ]
      f = { len = nf, buf = fbuf }
      g = { len = ng, buf = gbuf }
```

decodeLP2 reads the tag, takes exactly that many bytes, reads the next
tag, and so on. Data-dependent indices are clamped `% bl` so the
symbolic access stays in range; for normalized inputs the clamp is the
identity. `decodeLP2 (encodeLP2 f g) == (f, g)` is [P23](../properties/canonicalization-byte-injectivity.md#p23--distinct-requests-have-distinct-canonical-bytes).

### Related Properties
- [P23 — Distinct Requests Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p23--distinct-requests-have-distinct-canonical-bytes)

