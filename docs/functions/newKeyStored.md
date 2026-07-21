# `newKeyStored`  🧩

> 🧩 **Model abstraction.** model of the `newKey.isActive = false` write the body performs prior to storing. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `nk`: [64][8]

**Returns**
- [64][8]

<details><summary>Raw signature</summary>

`[64][8] -> [64][8]`

</details>

### Formal definition (Cryptol)

```haskell
newKeyStored nk = update nk ek_off_isActive 0
```

> **Not yet verified.**

The body forces the incoming key INACTIVE before storing it.

