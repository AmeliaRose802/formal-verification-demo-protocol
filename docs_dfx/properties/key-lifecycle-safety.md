# Key Lifecycle Safety

### P1 — Active Key Cannot Be Reactivated

[P1](../SDEP/properties/key-lifecycle-safety.md#p1--active-key-cannot-be-reactivated): An active key cannot be re-activated. Once the activation oracle
reports the key is already active, [enrollDevice](../SDEP/functions/enrollDevice.md) can never return Succeeded
no matter what other inputs the request carries. (Historical name:
"Key Monotonicity".)

**Involved:** [`AC_AlreadyActive`](../SDEP/types.md#activationresult), [`ER_Succeeded`](../SDEP/types.md#enrollmentresult), [`enrollDevice`](../SDEP/functions/enrollDevice.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isAuthResult authResult ==>
keyAlreadyActive ==>
enrollDevice fleetEnabled validMetadata authResult AC_AlreadyActive
!= ER_Succeeded
```

</details>

### P2 — Active Key Blocks Provisioning

[P2](../SDEP/properties/key-lifecycle-safety.md#p2--active-key-blocks-provisioning): An active key blocks further provisioning. Even with a valid request
and a healthy vault, attempting to provision while the key is already
active returns Unauthorized.

**Involved:** [`KV_Ok`](../SDEP/types.md#keyvaultresult), [`PR_Unauthorized`](../SDEP/types.md#provisionresult), [`provisionKey`](../SDEP/functions/provisionKey.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isKeyVaultResult vaultResult ==>
fleetEnabled ==>
validRequest ==>
vaultResult == KV_Ok ==>
provisionKey fleetEnabled validRequest vaultResult True
== PR_Unauthorized
```

</details>

### P3 — Key Id Hidden Before Activation

[P3](../SDEP/properties/key-lifecycle-safety.md#p3--key-id-hidden-before-activation): Key ID is hidden before activation.

**Involved:** [`getStatus`](../SDEP/functions/getStatus.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
(getStatus fleetEnabled hasKey False keyId).keyId == none
```

</details>

### P4 — Key Id Revealed After Activation

[P4](../SDEP/properties/key-lifecycle-safety.md#p4--key-id-revealed-after-activation): Key ID is revealed after activation.

**Involved:** [`getStatus`](../SDEP/functions/getStatus.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
(getStatus fleetEnabled hasKey True keyId).keyId == some keyId
```

</details>

### P5 — Disabled Fleet Rejects Everything

[P5](../SDEP/properties/key-lifecycle-safety.md#p5--disabled-fleet-rejects-everything): A disabled fleet rejects every request — both [provisionKey](../SDEP/functions/provisionKey.md) and
[enrollDevice](../SDEP/functions/enrollDevice.md) short-circuit to their respective Disabled results.

**Involved:** [`ER_Disabled`](../SDEP/types.md#enrollmentresult), [`PR_Disabled`](../SDEP/types.md#provisionresult), [`enrollDevice`](../SDEP/functions/enrollDevice.md), [`provisionKey`](../SDEP/functions/provisionKey.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isKeyVaultResult vaultResult ==>
isAuthResult authResult ==>
isActivationResult activationResult ==>
(provisionKey False validRequest vaultResult keyIsActive == PR_Disabled)
&& (enrollDevice False validMetadata authResult activationResult
== ER_Disabled)
```

</details>

