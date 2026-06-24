# `lpField`  🧩  `internal helper`

> 🧩 **Model abstraction.** length-prefix encoder stand-in for a single structured-request field. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `f`: [Field](../types.md#field)

**Returns**
- [1 + [StructFieldLen](../types.md#structfieldlen)][8]

<details><summary>Raw signature</summary>

`Field -> [1 + StructFieldLen][8]`

</details>

### Formal definition (Cryptol)

```haskell
lpField f = [f.len] # f.buf
```

Computes 1 + [StructFieldLen](../types.md#structfieldlen) bytes from `f`.

