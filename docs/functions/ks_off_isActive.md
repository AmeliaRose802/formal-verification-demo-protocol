# `ks_off_isActive`  🧩

> 🧩 **Model abstraction.** byte offset of key_->isActive in the KeyStore object image; an addressing constant for the model, not executable code. No production function is proven equivalent to this definition on this page.

### Formal definition (Cryptol)

```haskell
ks_off_isActive = 128 : Integer  // key_->isActive byte
```

> **Not yet verified.**

### Related Properties
- [KS1 — Activate Latch Monotone](../properties/intentional-counterexamples.md#ks1--activate-latch-monotone)
- [KS2 — Success Implies Active](../properties/intentional-counterexamples.md#ks2--success-implies-active)
- [KS4 — Io Failure No Effect](../properties/intentional-counterexamples.md#ks4--io-failure-no-effect)
- [PROV2 — Fresh Key Inactive](../properties/intentional-counterexamples.md#prov2--fresh-key-inactive)

