# `fieldNormalized`  `internal helper`

### Signature

**Parameters**
- `f`: [Field](../types.md#field)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`Field -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
fieldNormalized f =
    (f.len <= (`FLs : [IW])) /\
    and [ (i >= f.len) ==> ((f.buf @ i) == 0)
        | i <- ([0 .. FLs - 1] : [FLs][IW]) ]
```

Compares computed and provided values over `f`, returning `True` on match.

### Related Properties
- [P28 — Auth Header Value Excluded From Canonicalization](../properties/auth-header-exclusion.md#p28--auth-header-value-excluded-from-canonicalization)

