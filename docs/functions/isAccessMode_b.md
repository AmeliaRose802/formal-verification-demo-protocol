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

> **Not yet verified.**

Checks whether the access mode b is valid for the given inputs.

