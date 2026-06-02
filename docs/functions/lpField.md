# `lpField`  `internal helper`

### Signature

**Parameters**
- `f`: [Field](../types.md#field)

**Returns**
- [1 + [FLs](../types.md#fls)][8]

<details><summary>Raw signature</summary>

`Field -> [1 + FLs][8]`

</details>

### Formal definition (Cryptol)

```haskell
lpField f = [f.len] # f.buf
```

Length-prefix a [Field](../types.md#field) as [len-byte] # buf.

