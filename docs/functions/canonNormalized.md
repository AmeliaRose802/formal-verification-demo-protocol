# `canonNormalized`  `internal helper`

### Signature

**Parameters**
- `n`: [[IW](../types.md#iw)]
- `b`: [[FL](../types.md#fl)][8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[IW] -> [FL][8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
canonNormalized n b =
      and [ (i >= n) ==> ((b @ i) == 0)
          | i <- ([0 .. FL - 1] : [FL][IW]) ]
```

A field is normalized iff bytes at indices >= n are zero. This is the
invariant the C++ / Rust code maintains implicitly (it only reads the
first n bytes); making it explicit keeps logically-distinct requests
distinct as Cryptol values, so any collision the solver finds is a *real*
one.

### Related Properties
- [P23 — Distinct Requests Have Distinct Canonical Bytes](../properties/error-handling.md#p23--distinct-requests-have-distinct-canonical-bytes)
- [P24 — Distinct Headers Have Distinct Canonical Bytes](../properties/error-handling.md#p24--distinct-headers-have-distinct-canonical-bytes)
- [P25 — Distinct Queries Have Distinct Canonical Bytes](../properties/error-handling.md#p25--distinct-queries-have-distinct-canonical-bytes)

