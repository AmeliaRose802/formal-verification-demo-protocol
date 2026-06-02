# Key Lifecycle Safety

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P1 — Active Key Cannot Be Reactivated

P1: An active key cannot be re-activated. Once the activation oracle
reports the key is already active, [enrollDevice](../functions/enrollDevice.md) can never return Succeeded
no matter what other inputs the request carries. (Historical name:
"Key Monotonicity".)

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAuthResult authResult ==>
keyAlreadyActive ==>
enrollDevice fleetEnabled validMetadata authResult AC_AlreadyActive
!= ER_Succeeded
```

</details>

**Involved:** [`AC_AlreadyActive`](../types.md#activationresult), [`ER_Succeeded`](../types.md#enrollmentresult), [`enrollDevice`](../functions/enrollDevice.md)

### P2 — Active Key Blocks Provisioning

P2: An active key blocks further provisioning. Even with a valid request
and a healthy vault, attempting to provision while the key is already
active returns Unauthorized.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isKeyVaultResult vaultResult ==>
fleetEnabled ==>
validRequest ==>
vaultResult == KV_Ok ==>
provisionKey fleetEnabled validRequest vaultResult True
== PR_Unauthorized
```

</details>

**Involved:** [`KV_Ok`](../types.md#keyvaultresult), [`PR_Unauthorized`](../types.md#provisionresult), [`provisionKey`](../functions/provisionKey.md)

### P3 — Key Id Hidden Before Activation

P3: Key ID is hidden before activation.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(getStatus fleetEnabled hasKey False keyId).keyId == none
```

</details>

**Involved:** [`getStatus`](../functions/getStatus.md)

### P4 — Key Id Revealed After Activation

P4: Key ID is revealed after activation.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(getStatus fleetEnabled hasKey True keyId).keyId == some keyId
```

</details>

**Involved:** [`getStatus`](../functions/getStatus.md)

### P5 — Disabled Fleet Rejects Everything

P5: A disabled fleet rejects every request — both [provisionKey](../functions/provisionKey.md) and
[enrollDevice](../functions/enrollDevice.md) short-circuit to their respective Disabled results.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isKeyVaultResult vaultResult ==>
isAuthResult authResult ==>
isActivationResult activationResult ==>
(provisionKey False validRequest vaultResult keyIsActive == PR_Disabled)
&& (enrollDevice False validMetadata authResult activationResult
== ER_Disabled)
```

</details>

**Involved:** [`ER_Disabled`](../types.md#enrollmentresult), [`PR_Disabled`](../types.md#provisionresult), [`enrollDevice`](../functions/enrollDevice.md), [`provisionKey`](../functions/provisionKey.md)

