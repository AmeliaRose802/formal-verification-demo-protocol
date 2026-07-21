# `keyStoreProvisionPost`  🧩

> 🧩 **Model abstraction.** Cryptol model of KeyStore::provision's post-state; implementation-level SAW proof pending. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]
- `nk`: [64][8]

**Returns**
- [[KS_BYTES](../types.md#ks_bytes)][8]

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> [64][8] -> [KS_BYTES][8]`

</details>

### Formal definition (Cryptol)

```haskell
keyStoreProvisionPost pre nk =
  if (pre @ ks_off_engaged) == 1
  then pre
  else (take`{80} pre) # (newKeyStored nk) # [1] # (drop`{145} pre)
```

> **Not yet verified.**

Post-state object image. On the engaged (TOFU-locked) path nothing
changes; on the empty path the 64-byte (inactivated) key is written
into the optional payload at offset 80 and the engaged flag at 144 is
set. Bytes 0..79 (mutex) and 145..151 (tail padding) are preserved.

### Related Properties
- [PROV1 — Tofu Frame](../properties/prove).md#prov1--tofu-frame)
- [PROV2 — Fresh Key Inactive](../properties/prove).md#prov2--fresh-key-inactive)
- [PROV3 — Fresh Engages](../properties/prove).md#prov3--fresh-engages)
- [PROV5 — Mutex Preserved](../properties/prove).md#prov5--mutex-preserved)

