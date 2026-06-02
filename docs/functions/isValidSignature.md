# `isValidSignature`  `internal helper`

### Signature

**Parameters**
- `key`: [HmacKey](../types.md#hmackey)
- `req`: [Request](../types.md#request)
- `providedSig`: [HmacTag](../types.md#hmactag)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`HmacKey -> Request -> HmacTag -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
isValidSignature key req providedSig = hmacSha256 key req == providedSig
```

Checks whether the signature is valid by comparing the computed and expected values.

### Related Properties
- [P8 — Correct Hmac Verifies](../properties/authentication-security.md#p8--correct-hmac-verifies)
- [P9 — Wrong Hmac Fails](../properties/authentication-security.md#p9--wrong-hmac-fails)

