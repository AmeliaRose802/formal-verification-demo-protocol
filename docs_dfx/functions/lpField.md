# `lpField`  `internal helper`

### Signature

**Parameters**
- `f`: [Field](../SDEP/types.md#field)

**Returns**
- [1 + [FLs](../SDEP/types.md#fls)][8]

<details><summary>Raw signature</summary>

`Field -> [1 + FLs][8]`

</details>

Length-prefix a [Field](../SDEP/types.md#field) as [len-byte] # buf.

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
lpField f = [f.len] # f.buf
```

</details>
