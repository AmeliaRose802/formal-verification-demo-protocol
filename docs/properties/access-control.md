# Access Control

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P11 — Access Off Allows Without Logging

P11: Access-off mode allows every decision and logs nothing.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAccessDecision_b decision ==>
(allowedOf (enforceAccess AM_Off_b decision) == True) /\
(loggedOf  (enforceAccess AM_Off_b decision) == False)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enforceAccess`
> - ✗ equivalence proof **failed**: `allowedOf`, `isAccessDecision_b`, `loggedOf`

**Involved:** [`AM_Off_b`](../functions/AM_Off_b.md), [`allowedOf`](../functions/allowedOf.md), [`enforceAccess`](../functions/enforceAccess.md), [`isAccessDecision_b`](../functions/isAccessDecision_b.md), [`loggedOf`](../functions/loggedOf.md)

### P12 — Access Audit Never Denies

P12: Access-audit mode never denies.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAccessDecision_b decision ==>
allowedOf (enforceAccess AM_Audit_b decision) == True
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enforceAccess`
> - ✗ equivalence proof **failed**: `allowedOf`, `isAccessDecision_b`

**Involved:** [`AM_Audit_b`](../functions/AM_Audit_b.md), [`allowedOf`](../functions/allowedOf.md), [`enforceAccess`](../functions/enforceAccess.md), [`isAccessDecision_b`](../functions/isAccessDecision_b.md)

### P13 — Access Enforce Blocks Denials

P13: Access-enforce mode blocks any explicitly denied request.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(allowedOf (enforceAccess AM_Enforce_b AD_Deny_b) == False) /\
(loggedOf  (enforceAccess AM_Enforce_b AD_Deny_b) == True)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enforceAccess`
> - ✗ equivalence proof **failed**: `allowedOf`, `loggedOf`

**Involved:** [`AD_Deny_b`](../functions/AD_Deny_b.md), [`AM_Enforce_b`](../functions/AM_Enforce_b.md), [`allowedOf`](../functions/allowedOf.md), [`enforceAccess`](../functions/enforceAccess.md), [`loggedOf`](../functions/loggedOf.md)

### P14 — Access Enforce Allows Permitted

P14: Access-enforce mode allows any explicitly permitted request.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(allowedOf (enforceAccess AM_Enforce_b AD_Allow_b) == True) /\
(loggedOf  (enforceAccess AM_Enforce_b AD_Allow_b) == False)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enforceAccess`
> - ✗ equivalence proof **failed**: `allowedOf`, `loggedOf`

**Involved:** [`AD_Allow_b`](../functions/AD_Allow_b.md), [`AM_Enforce_b`](../functions/AM_Enforce_b.md), [`allowedOf`](../functions/allowedOf.md), [`enforceAccess`](../functions/enforceAccess.md), [`loggedOf`](../functions/loggedOf.md)

