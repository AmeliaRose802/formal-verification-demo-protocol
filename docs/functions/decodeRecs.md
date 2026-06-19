# `decodeRecs`  `internal helper`

### Signature

**Parameters**
- `buf`: [[RecBufLen](../types.md#recbuflen)][8]

**Returns**
- ([[IndexWidth](../types.md#indexwidth)], [LpField](../types.md#lpfield), [LpField](../types.md#lpfield))

<details><summary>Raw signature</summary>

`[RecBufLen][8] -> ([IndexWidth], LpField, LpField)`

</details>

### Formal definition (Cryptol)

```haskell
decodeRecs buf = (c, a0, a1)
    where
      rl    = (`(RecBufLen) : [IndexWidth])
      c     = buf @ 0
      l0    = if c >= 1 then buf @ 1 else 0
      a0buf = [ if (c >= 1) /\ (j < l0) then buf @ ((2 + j) % rl) else 0
              | j <- ([0 .. FieldLen - 1] : [FieldLen][IndexWidth]) ]
      l1    = if c >= 2 then buf @ ((2 + l0) % rl) else 0
      a1buf = [ if (c >= 2) /\ (j < l1) then buf @ ((2 + l0 + 1 + j) % rl) else 0
              | j <- ([0 .. FieldLen - 1] : [FieldLen][IndexWidth]) ]
      a0 = { len = l0, buf = a0buf }
      a1 = { len = l1, buf = a1buf }
```

Computes a result tuple from `buf`.

### Related Properties
- [P24 — Distinct Headers Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p24--distinct-headers-have-distinct-canonical-bytes)

