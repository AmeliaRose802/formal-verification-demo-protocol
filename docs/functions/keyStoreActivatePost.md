# `keyStoreActivatePost`  🧩

> 🧩 **Model abstraction.** Cryptol model of KeyStore::activate's post-state (one-byte isActive latch); implementation-level SAW proof pending. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]
- `kid`: [16][8]

**Returns**
- [[KS_BYTES](../types.md#ks_bytes)][8]

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> [16][8] -> [KS_BYTES][8]`

</details>

### Formal definition (Cryptol)

```haskell
keyStoreActivatePost pre kid =
  update pre ks_off_isActive newActive
  where
    newActive = if (ksEngaged pre) /\ (ksIdMatch pre kid) /\ ~(ksWasActive pre)
                then 1
                else pre @ ks_off_isActive
```

> **Not yet verified.**

Post-state object image. The body mutates EXACTLY one byte — the
`isActive` flag — and only on a matching activation of an inactive
key; every other byte (mutex, keyId, secret, createdAt, engaged) is
carried through unchanged. This is the monotone "latch": once set,
`isActive` is never cleared by `activate`.

### Related Properties
- [KS1 — Activate Latch Monotone](../properties/intentional-counterexamples.md#ks1--activate-latch-monotone)
- [KS2 — Success Implies Active](../properties/intentional-counterexamples.md#ks2--success-implies-active)
- [KS3 — Only Is Active Changes](../properties/intentional-counterexamples.md#ks3--only-is-active-changes)
- [KS4 — Io Failure No Effect](../properties/intentional-counterexamples.md#ks4--io-failure-no-effect)

