# `isAccessMode_b`  ✗

### Signature

**Parameters**
- `m`: [8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
isAccessMode_b m = m <= AM_Enforce_b
```

> **Verification failed:** saw-spec-gen failed

Checks whether the access mode b is valid for the given inputs.

