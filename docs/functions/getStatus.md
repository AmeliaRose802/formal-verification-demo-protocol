# `getStatus`

### Signature

**Parameters**
- `fleetEnabled`: Bit
- `hasKey`: Bit
- `keyIsActive`: Bit
- `keyId`: [UUID](../types.md#uuid)

**Returns**
- [EnrollmentStatus](../types.md#enrollmentstatus)

<details><summary>Raw signature</summary>

`Bit -> Bit -> Bit -> UUID -> EnrollmentStatus`

</details>

### Formal definition (Cryptol)

```haskell
getStatus fleetEnabled hasKey keyIsActive keyId =
  { fleetMode = if fleetEnabled then FM_Enabled else FM_Disabled
  , hasKey    = hasKey
  , keyId     = if keyIsActive then some keyId else none
  , isActive  = keyIsActive
  }
```

Constructs `EnrollmentStatus` from the given inputs.

### Related Properties
- [P3 — Key Id Hidden Before Activation](../properties/key-lifecycle-safety.md#p3--key-id-hidden-before-activation)
- [P4 — Key Id Revealed After Activation](../properties/key-lifecycle-safety.md#p4--key-id-revealed-after-activation)

