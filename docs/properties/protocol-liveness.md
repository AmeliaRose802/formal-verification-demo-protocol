# Protocol Liveness

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P15 — Authorized Request On Inactive Key Succeeds

P15: A valid, authorized provisioning request on an inactive key succeeds.

<details><summary>Formal property (Cryptol)</summary>

```haskell
provisionKey True True KV_Ok False == PR_Succeeded
```

</details>

**Involved:** [`KV_Ok`](../types.md#keyvaultresult), [`PR_Succeeded`](../types.md#provisionresult), [`provisionKey`](../functions/provisionKey.md)

### P16 — Authenticated Enrollment Succeeds

P16: An authenticated enrollment with a successful activation succeeds.

<details><summary>Formal property (Cryptol)</summary>

```haskell
enrollDevice True True AR_Authenticated AC_Success == ER_Succeeded
```

</details>

**Involved:** [`AC_Success`](../types.md#activationresult), [`AR_Authenticated`](../types.md#authresult), [`ER_Succeeded`](../types.md#enrollmentresult), [`enrollDevice`](../functions/enrollDevice.md)

### P17 — Timestamp At Boundary Accepted

P17: A timestamp exactly at the window boundary is accepted.

<details><summary>Formal property (Cryptol)</summary>

```haskell
// Avoid 64-bit overflow when constructing currentTime.
(requestTs <= (~ zero) - window) ==>
isValidRequestDate requestTs (requestTs + window) window == True
```

</details>

**Involved:** [`isValidRequestDate`](../functions/isValidRequestDate.md)

### P18 — Timestamp Beyond Boundary Rejected

P18: A timestamp beyond the window boundary is rejected.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(requestTs <= currentTime) ==>
((currentTime - requestTs) > window) ==>
isValidRequestDate requestTs currentTime window == False
```

</details>

**Involved:** [`isValidRequestDate`](../functions/isValidRequestDate.md)

