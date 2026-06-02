# `requestNormalized`  `internal helper`

### Signature

**Parameters**
- `r`: [StructuredRequest](../types.md#structuredrequest)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`StructuredRequest -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
requestNormalized r =
    fieldNormalized r.method /\
    fieldNormalized r.path /\
    fieldNormalized r.body /\
    and [ fieldNormalized h.name /\ fieldNormalized h.value
        | h <- r.hdrs ]
```

Tests whether `r` is well-formed.

### Related Properties
- [P28 — Auth Header Value Excluded From Canonicalization](../properties/structured-request-properties.md#p28--auth-header-value-excluded-from-canonicalization)

