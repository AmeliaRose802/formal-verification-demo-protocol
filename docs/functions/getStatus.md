# `getStatus`  ⚠️

> ⚠️ **Implemented, unverified.** This function exists in the codebase but **no machine-checked equivalence proof** has been discharged. Real implementation: `C:/Users/ameliapayne/demo_protocol/cpp/src/decision.cpp`. Verification **failed**: verify script exited with code 2.

### Signature

**Parameters**
- `fleetEnabled`: Bit
- `hasKey`: Bit
- `keyIsActive`: Bit
- `keyId`: [16][8]
- `preBytes`: [17][8]

**Returns**
- [20][8]

<details><summary>Raw signature</summary>

`Bit -> Bit -> Bit -> [16][8] -> [17][8] -> [20][8]`

</details>

### Formal definition (Cryptol)

```haskell
getStatus fleetEnabled hasKey keyIsActive keyId preBytes =
    [fleetModeByte, hasKeyByte] # optionalBytes # [isActiveByte]
  where
    fleetModeByte = if fleetEnabled then FM_Enabled_b else FM_Disabled_b
    hasKeyByte    = if hasKey       then 1            else 0
    isActiveByte  = if keyIsActive  then 1            else 0
    engagedByte   = if keyIsActive  then 1            else 0
    payloadBytes  = if keyIsActive
                     then keyId
                     // nullopt: payload union left at pre-call contents
                     else take`{16} preBytes
    optionalBytes = payloadBytes # [engagedByte]
```

> **Verification failed:** verify script exited with code 2

4.6 getStatus — LLVM: sret(20 byte EnrollmentStatus), (i1,i1,i1,ptr Uuid)
EnrollmentStatus IR layout (alignment 1, 20 bytes):

```text
  byte  0     : fleetMode    (i8)
  byte  1     : hasKey       (i8, from bool)
  bytes 2-18  : optional<Uuid> = { union.anon = Uuid (16 B), i8 engaged }
                 ↳ bytes 2..17 : Uuid bytes when engaged, *otherwise
                                 uninitialised* (we model as `keyId` from
                                 the input buffer; see below)
                 ↳ byte  18    : engaged flag (i8 from bool)
  byte 19     : isActive     (i8, from bool)
```

The C++ body is

```text
  return EnrollmentStatus{
    .fleetMode = fleetEnabled ? Enabled : Disabled,
    .hasKey    = hasKey,
    .keyId     = keyIsActive ? optional<Uuid>{keyId} : nullopt,
    .isActive  = keyIsActive,
  };
```

When `keyIsActive` is false the optional storage is *not* zeroed:
constructing `nullopt` only sets the engaged flag to 0 and leaves the
union payload uninitialised.  SAW models that as the bytes already
present in the sret buffer — which we havoc with a `pre_bytes`
symbolic in the spec.  The Cryptol model below therefore takes a
`preBytes : [17][8]` parameter representing the 17 bytes of the
optional storage prior to the call.  When the key is active we
overwrite the 16 Uuid bytes; when it's not we leave them alone.
The output is a 20-byte symbolic representing the full IR struct
after `getStatus` returns.

### Related Properties
- [P3 — Key Id Hidden Before Activation](../properties/key-lifecycle-safety.md#p3--key-id-hidden-before-activation)
- [P4 — Key Id Revealed After Activation](../properties/key-lifecycle-safety.md#p4--key-id-revealed-after-activation)

