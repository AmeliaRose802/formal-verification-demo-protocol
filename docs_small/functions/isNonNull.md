# `isNonNull`

### Signature

**Parameters**
- `p`: [64]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[64] -> Bit`

</details>

Matches C++ `bool [isNonNull](../SDEP_small/functions/isNonNull.md)(void* p)`.

### Related Properties
- [P3 — Null Pointer Is Not Nonnull](../SDEP_small/properties/void-pointer-value.md#p3--null-pointer-is-not-nonnull)
- [P4 — Nonzero Pointer Is Nonnull](../SDEP_small/properties/void-pointer-value.md#p4--nonzero-pointer-is-nonnull)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
isNonNull p = p != 0
```

</details>
