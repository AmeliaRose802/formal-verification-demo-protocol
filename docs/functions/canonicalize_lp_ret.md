# `canonicalize_lp_ret`  🧩

> 🧩 **Model abstraction.** Byte-count model for the bounded length-prefix encoder; paired with canonicalize_lp_post. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `_`: [10][8]
- `_`: [4][8]
- `nm`: [8]
- `_`: [4][8]
- `nb`: [8]

**Returns**
- [64]

<details><summary>Raw signature</summary>

`[10][8] -> [4][8] -> [8] -> [4][8] -> [8] -> [64]`

</details>

### Formal definition (Cryptol)

```haskell
canonicalize_lp_ret _ _ nm _ nb = (zext nm) + (zext nb) + 2
```

> **Not yet verified.**

Return value of canonicalize_lp: total bytes written = 2 + nm + nb.
Takes the full C arg list and ignores the buffers so the tool can do
a verbatim 1:1 arg mapping (no --cryptol-arg-order flag needed).

