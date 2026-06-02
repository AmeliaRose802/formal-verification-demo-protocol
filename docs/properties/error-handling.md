# Error Handling

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P19 — Vault Unavailable Is Internal Error

P19: A vault-unavailable result maps to InternalError.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isActivationResult_b activationResult ==>
enrollDevice True True AR_VaultUnavailable_b activationResult
== ER_InternalError_b
```

</details>

**Involved:** [`AR_VaultUnavailable_b`](../functions/AR_VaultUnavailable_b.md), [`ER_InternalError_b`](../functions/ER_InternalError_b.md), [`enrollDevice`](../functions/enrollDevice.md), [`isActivationResult_b`](../functions/isActivationResult_b.md)

### P20 — Invalid Request Is Bad Request

P20: An invalid request maps to BadRequest, not Unauthorized.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isKeyVaultResult_b vaultResult ==>
provisionKey True False vaultResult keyIsActive == PR_BadRequest_b
```

</details>

**Involved:** [`PR_BadRequest_b`](../functions/PR_BadRequest_b.md), [`isKeyVaultResult_b`](../functions/isKeyVaultResult_b.md), [`provisionKey`](../functions/provisionKey.md)

### P21 — Activate Without Metadata Is Unauthorized

P21: Activate without metadata maps to Unauthorized.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAuthResult_b authResult ==>
isActivationResult_b activationResult ==>
enrollDevice True False authResult activationResult == ER_Unauthorized_b
```

</details>

**Involved:** [`ER_Unauthorized_b`](../functions/ER_Unauthorized_b.md), [`enrollDevice`](../functions/enrollDevice.md), [`isActivationResult_b`](../functions/isActivationResult_b.md), [`isAuthResult_b`](../functions/isAuthResult_b.md)

### P22 — Activation Io Failure Is Internal Error

P22: An activation I/O failure maps to InternalError.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isActivationResult_b activationResult ==>
(activationResult != AC_Success_b) ==>
(activationResult != AC_AlreadyActive_b) ==>
enrollDevice True True AR_Authenticated_b activationResult
== ER_InternalError_b
```

</details>

**Involved:** [`AC_AlreadyActive_b`](../functions/AC_AlreadyActive_b.md), [`AC_Success_b`](../functions/AC_Success_b.md), [`AR_Authenticated_b`](../functions/AR_Authenticated_b.md), [`ER_InternalError_b`](../functions/ER_InternalError_b.md), [`enrollDevice`](../functions/enrollDevice.md), [`isActivationResult_b`](../functions/isActivationResult_b.md)

