# `keyStoreProvisionRet`  🧩

> 🧩 **Model abstraction.** Cryptol model of KeyStore::provision's returned optional on the fresh-enrolment path. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]
- `nk`: [64][8]

**Returns**
- [72][8]

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> [64][8] -> [72][8]`

</details>

### Formal definition (Cryptol)

```haskell
keyStoreProvisionRet pre nk = (newKeyStored nk) # [1] # (drop`{145} pre)
```

> **Not yet verified.**

Returned optional<EnrollmentKey> image (72 bytes: 64-byte payload ·
engaged@64 · 7 bytes tail). ONLY meaningful on the empty (fresh) path,
where the body memcpy's the just-stored 72-byte optional out of the
object — so the tail bytes mirror the object's tail (pre[145..151]).
On the engaged path the return is nullopt and its payload is left
uninitialised (only the engaged byte, asserted 0, is defined); an
implementation-level proof of that path would need a partial
postcondition. (Implementation-level SAW proof pending.)

### Related Properties
- [PROV4 — Returned Key Inactive](../properties/intentional-counterexamples.md#prov4--returned-key-inactive)

