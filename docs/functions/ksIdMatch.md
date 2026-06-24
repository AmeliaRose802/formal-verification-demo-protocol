# `ksIdMatch`  🧩

> 🧩 **Model abstraction.** model predicate (keyId equality) standing in for the C++ Uuid::operator==. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]
- `kid`: [16][8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> [16][8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
ksIdMatch pre kid = (take`{16} (drop`{80} pre)) == kid
```

> **Not yet verified.**

Compares computed and provided values over `pre` and `kid`, returning `True` on match.

