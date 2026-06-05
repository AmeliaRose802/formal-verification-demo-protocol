# `statusEngagedByte`  ✗

### Signature

**Parameters**
- `s`: [20][8]

**Returns**
- [8]

<details><summary>Raw signature</summary>

`[20][8] -> [8]`

</details>

### Formal definition (Cryptol)

```haskell
statusEngagedByte  s = s @ 18
```

> **Not yet verified.**

[getStatus](getStatus.md) result extractors
EnrollmentStatus byte layout (see [getStatus](getStatus.md) above):

```text
  byte  0     : fleetMode
  byte  1     : hasKey
  bytes 2..17 : optional<Uuid> payload (16 bytes)
  byte  18    : engaged flag for the optional<Uuid>
  byte  19    : isActive
```

### Related Properties
- [P3 — Key Id Hidden Before Activation](../properties/key-lifecycle-safety.md#p3--key-id-hidden-before-activation)
- [P4 — Key Id Revealed After Activation](../properties/key-lifecycle-safety.md#p4--key-id-revealed-after-activation)

