# `authenticate`

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
- [P6 — Auth Rejects Invalid Date](../SDEP/properties/authentication-security.md#p6--auth-rejects-invalid-date)
- [P7 — Auth Rejects Invalid Signature](../SDEP/properties/authentication-security.md#p7--auth-rejects-invalid-signature)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
authenticate dateValid signatureValid claimsValid =
  dateValid && signatureValid && claimsValid
```

</details>
