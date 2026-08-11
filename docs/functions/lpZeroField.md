# `lpZeroField`  🧩  `internal helper`

> 🧩 **Model abstraction.** zero/empty length-prefixed field — initial value for the bounded canonicalization model. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- *(none)*

**Returns**
- [LpField](../types.md#lpfield)

<details><summary>Raw signature</summary>

`LpField`

</details>

### Formal definition (Cryptol)

```haskell
lpZeroField = { len = 0, buf = zero }
```

Constructs `LpField` from the given inputs.

