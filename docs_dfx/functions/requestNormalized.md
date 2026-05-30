# `requestNormalized`  `internal helper`

### Signature

**Parameters**
- `r`: [RequestS](../SDEP/types.md#requests)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`RequestS -> Bit`

</details>

Tests whether `r` is well-formed.

### Related Properties
- [P28 — Auth Header Value Excluded From Canonicalization](../SDEP/properties/auth-header-exclusion.md#p28--auth-header-value-excluded-from-canonicalization)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
requestNormalized r =
    fieldNormalized r.method /\
    fieldNormalized r.path /\
    fieldNormalized r.body /\
    and [ fieldNormalized h.name /\ fieldNormalized h.value
        | h <- r.hdrs ]
```

</details>
