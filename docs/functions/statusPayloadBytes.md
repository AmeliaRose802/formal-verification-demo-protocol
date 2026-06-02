# `statusPayloadBytes`  ✗

### Signature

**Parameters**
- `s`: [20][8]

**Returns**
- [16][8]

<details><summary>Raw signature</summary>

`[20][8] -> [16][8]`

</details>

### Formal definition (Cryptol)

```haskell
statusPayloadBytes s = take`{16} (drop`{2} s)
```

> **Verification failed:** saw-spec-gen failed

Computes 16 bytes from `s`.

### Related Properties
- [P4 — Key Id Revealed After Activation](../properties/key-lifecycle-safety.md#p4--key-id-revealed-after-activation)

