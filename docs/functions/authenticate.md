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

### Formal definition (Cryptol)

```haskell
authenticate dateValid signatureValid claimsValid =
  dateValid && signatureValid && claimsValid
```

Returns `True` only when all of `dateValid`, `signatureValid`, and `claimsValid` are true.

### Related Properties
- [P6 — Auth Rejects Invalid Date](../properties/authentication-security.md#p6--auth-rejects-invalid-date)
- [P7 — Auth Rejects Invalid Signature](../properties/authentication-security.md#p7--auth-rejects-invalid-signature)

