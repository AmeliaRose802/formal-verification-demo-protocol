# Key Lifecycle Safety

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P1 — Active Key Cannot Be Reactivated

P1: An active key cannot be re-activated. Once the activation oracle
reports the key is already active, [enrollDevice](../functions/enrollDevice.md) can never return Succeeded
no matter what other inputs the request carries.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAuthResult_b authResult ==>
keyAlreadyActive ==>
enrollDevice fleetEnabled validMetadata authResult AC_AlreadyActive_b
!= ER_Succeeded_b
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enrollDevice`
> - ✗ equivalence proof **not yet attempted**: `isAuthResult_b`

**Involved:** [`AC_AlreadyActive_b`](../functions/AC_AlreadyActive_b.md), [`ER_Succeeded_b`](../functions/ER_Succeeded_b.md), [`enrollDevice`](../functions/enrollDevice.md), [`isAuthResult_b`](../functions/isAuthResult_b.md)

### P2 — Active Key Blocks Provisioning

P2: An active key blocks further provisioning. Even with a valid request
and a healthy vault, attempting to provision while the key is already
active returns Unauthorized.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isKeyVaultResult_b vaultResult ==>
fleetEnabled ==>
validRequest ==>
vaultResult == KV_Ok_b ==>
provisionKey fleetEnabled validRequest vaultResult True
== PR_Unauthorized_b
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `provisionKey`
> - ✗ equivalence proof **not yet attempted**: `isKeyVaultResult_b`

**Involved:** [`KV_Ok_b`](../functions/KV_Ok_b.md), [`PR_Unauthorized_b`](../functions/PR_Unauthorized_b.md), [`isKeyVaultResult_b`](../functions/isKeyVaultResult_b.md), [`provisionKey`](../functions/provisionKey.md)

### P3 — Key Id Hidden Before Activation

P3: Key ID is hidden before activation.

<details><summary>Formal property (Cryptol)</summary>

```haskell
statusEngagedByte (getStatus fleetEnabled hasKey False keyId preBytes) == 0
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **failed**: `getStatus`
> - ✗ equivalence proof **not yet attempted**: `statusEngagedByte`

**Involved:** [`getStatus`](../functions/getStatus.md), [`statusEngagedByte`](../functions/statusEngagedByte.md)

### P4 — Key Id Revealed After Activation

P4: Key ID is revealed after activation.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(statusEngagedByte  (getStatus fleetEnabled hasKey True keyId preBytes) == 1) /\
(statusPayloadBytes (getStatus fleetEnabled hasKey True keyId preBytes) == keyId)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **failed**: `getStatus`
> - ✗ equivalence proof **not yet attempted**: `statusEngagedByte`, `statusPayloadBytes`

**Involved:** [`getStatus`](../functions/getStatus.md), [`statusEngagedByte`](../functions/statusEngagedByte.md), [`statusPayloadBytes`](../functions/statusPayloadBytes.md)

### P5 — Disabled Fleet Rejects Everything

P5: A disabled fleet rejects every request — both [provisionKey](../functions/provisionKey.md) and
[enrollDevice](../functions/enrollDevice.md) short-circuit to their respective Disabled results.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isKeyVaultResult_b vaultResult ==>
isAuthResult_b authResult ==>
isActivationResult_b activationResult ==>
(provisionKey False validRequest vaultResult keyIsActive == PR_Disabled_b)
/\ (enrollDevice False validMetadata authResult activationResult
== ER_Disabled_b)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enrollDevice`, `provisionKey`
> - ✗ equivalence proof **not yet attempted**: `isActivationResult_b`, `isAuthResult_b`, `isKeyVaultResult_b`

**Involved:** [`ER_Disabled_b`](../functions/ER_Disabled_b.md), [`PR_Disabled_b`](../functions/PR_Disabled_b.md), [`enrollDevice`](../functions/enrollDevice.md), [`isActivationResult_b`](../functions/isActivationResult_b.md), [`isAuthResult_b`](../functions/isAuthResult_b.md), [`isKeyVaultResult_b`](../functions/isKeyVaultResult_b.md), [`provisionKey`](../functions/provisionKey.md)

