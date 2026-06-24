# `lpHeader`  🧩  `internal helper`

> 🧩 **Model abstraction.** length-prefix encoder stand-in for a request header (Authorization headers are excluded from the signed payload). No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `h`: [Header](../types.md#header)

**Returns**
- [2 * (1 + [StructFieldLen](../types.md#structfieldlen))][8]

<details><summary>Raw signature</summary>

`Header -> [2 * (1 + StructFieldLen)][8]`

</details>

### Formal definition (Cryptol)

```haskell
lpHeader h = if h.isAuth then zero
                           else (lpField h.name) # (lpField h.value)
```

Computes 2 * (1 + [StructFieldLen](../types.md#structfieldlen)) bytes from `h`.

