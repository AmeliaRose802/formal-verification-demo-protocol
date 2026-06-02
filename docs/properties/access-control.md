# Access Control

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P11 — Access Off Allows Without Logging

P11: Access-off mode allows every decision and logs nothing.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAccessDecision decision ==>
enforceAccess AM_Off decision == (True, False)
```

</details>

**Involved:** [`AM_Off`](../types.md#accessmode), [`enforceAccess`](../functions/enforceAccess.md)

### P12 — Access Audit Never Denies

P12: Access-audit mode never denies (regardless of the underlying decision).

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAccessDecision decision ==>
(enforceAccess AM_Audit decision).0 == True
```

</details>

**Involved:** [`AM_Audit`](../types.md#accessmode), [`enforceAccess`](../functions/enforceAccess.md)

### P13 — Access Enforce Blocks Denials

P13: Access-enforce mode blocks any explicitly denied request.

<details><summary>Formal property (Cryptol)</summary>

```haskell
enforceAccess AM_Enforce AD_Deny == (False, True)
```

</details>

**Involved:** [`AD_Deny`](../types.md#accessdecision), [`AM_Enforce`](../types.md#accessmode), [`enforceAccess`](../functions/enforceAccess.md)

### P14 — Access Enforce Allows Permitted

P14: Access-enforce mode allows any explicitly permitted request.

<details><summary>Formal property (Cryptol)</summary>

```haskell
enforceAccess AM_Enforce AD_Allow == (True, False)
```

</details>

**Involved:** [`AD_Allow`](../types.md#accessdecision), [`AM_Enforce`](../types.md#accessmode), [`enforceAccess`](../functions/enforceAccess.md)

