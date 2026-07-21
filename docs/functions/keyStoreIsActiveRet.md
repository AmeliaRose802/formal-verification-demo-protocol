# `keyStoreIsActiveRet`  🧩

> 🧩 **Model abstraction.** model of KeyStore::isActive() (engaged && key_->isActive). No production function is proven equivalent to this definition on this page.

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
keyStoreIsActiveRet pre = boolOfByte (pre @ ks_off_engaged) /\ boolOfByte (pre @ ks_off_isActive)
```

> **Not yet verified.**

Tests whether `pre` is well-formed.

### Related Properties
- [ACC1 — Active Implies Has Key](../properties/intentional-counterexamples.md#acc1--active-implies-has-key)

