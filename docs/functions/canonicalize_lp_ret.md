# `canonicalize_lp_ret`

### Signature

**Parameters**
- `nm`: [8]
- `nb`: [8]

**Returns**
- [64]

<details><summary>Raw signature</summary>

`[8] -> [8] -> [64]`

</details>

### Formal definition (Cryptol)

```haskell
canonicalize_lp_ret nm nb = (zext nm) + (zext nb) + 2
```

Return value of canonicalize_lp: total bytes written = 2 + nm + nb.

