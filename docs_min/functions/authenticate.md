# `authenticate`  ❌ Failed: verify script exited with code 2

### Signature

**Parameters**
- `dateValid`: Bit
- `signatureValid`: Bit
- `claimsValid`: Bit

**Returns**
- Bit

<details><summary>Raw signature</summary>

`Bit -> Bit -> Bit -> Bit`

</details>

Returns `True` only when all of `dateValid`, `signatureValid`, and `claimsValid` are true.

### Related Properties
- [P — Authenticate Is And](../SDEP_min/properties/misc.md#p--authenticate-is-and)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
authenticate dateValid signatureValid claimsValid =
  dateValid && signatureValid && claimsValid
```

</details>
