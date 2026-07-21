# KeyStore read accessors — hasKey() / isActive()

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### ACC1 — Active Implies Has Key

ACC1: an active store necessarily has a key — isActive() implies
hasKey(). This couples the two accessors so a caller can rely on
isActive() as a strictly stronger check.

<details><summary>Formal property (Cryptol)</summary>

```haskell
keyStoreIsActiveRet pre ==> keyStoreHasKeyRet pre
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreHasKeyRet`, `keyStoreIsActiveRet`

**Involved:** [`keyStoreHasKeyRet`](../functions/keyStoreHasKeyRet.md), [`keyStoreIsActiveRet`](../functions/keyStoreIsActiveRet.md)

