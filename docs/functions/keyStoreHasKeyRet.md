# `keyStoreHasKeyRet`  🧩

> 🧩 **Model abstraction.** model of KeyStore::hasKey() (optional has_value). No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
keyStoreHasKeyRet pre = boolOfByte (pre @ ks_off_engaged)
```

> **Not yet verified.**

Cryptol indexes words MSB-first (`@ 0` is bit 7), while LLVM i8->i1
truncation keeps the LSB. Use `@ 7` to mirror the implementation.

### Related Properties
- [ACC1 — Active Implies Has Key](../properties/intentional-counterexamples.md#acc1--active-implies-has-key)

