# enforceAccess matrix-coverage closures

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P26 — Enforce Without Rule Allows Silently

P26: Access-enforce mode with no matching rule allows silently.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(allowedOf (enforceAccess AM_Enforce_b AD_NoRule_b) == True) /\
(loggedOf  (enforceAccess AM_Enforce_b AD_NoRule_b) == False)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enforceAccess`
> - ✗ equivalence proof **failed**: `allowedOf`, `loggedOf`

**Involved:** [`AD_NoRule_b`](../functions/AD_NoRule_b.md), [`AM_Enforce_b`](../functions/AM_Enforce_b.md), [`allowedOf`](../functions/allowedOf.md), [`enforceAccess`](../functions/enforceAccess.md), [`loggedOf`](../functions/loggedOf.md)

### P27 — Audit Logs Only On Denial

P27: Access-audit mode logs IFF the underlying decision is Deny.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAccessDecision_b decision ==>
loggedOf (enforceAccess AM_Audit_b decision) == (decision == AD_Deny_b)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enforceAccess`
> - ✗ equivalence proof **failed**: `isAccessDecision_b`, `loggedOf`

**Involved:** [`AD_Deny_b`](../functions/AD_Deny_b.md), [`AM_Audit_b`](../functions/AM_Audit_b.md), [`enforceAccess`](../functions/enforceAccess.md), [`isAccessDecision_b`](../functions/isAccessDecision_b.md), [`loggedOf`](../functions/loggedOf.md)

