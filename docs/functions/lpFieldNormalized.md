# `lpFieldNormalized`  🧩  `internal helper`

> 🧩 **Model abstraction.** well-formedness predicate (len in range, tail zero-padded) for a bounded length-prefixed field. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `f`: [LpField](../types.md#lpfield)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`LpField -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
lpFieldNormalized f =
    (f.len <= (`FieldLen : [IndexWidth])) /\
    and [ (i >= f.len) ==> ((f.buf @ i) == 0)
        | i <- ([0 .. FieldLen - 1] : [FieldLen][IndexWidth]) ]
```

Compares computed and provided values over `f`, returning `True` on match.

### Related Properties
- [P23 — Distinct Requests Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p23--distinct-requests-have-distinct-canonical-bytes)

