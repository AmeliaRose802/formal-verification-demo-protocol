# `isValidSignature`  `internal helper`

### Signature

**Parameters**
- `key`: [HmacKey](../SDEP/types.md#hmackey)
- `req`: [Request](../SDEP/types.md#request)
- `providedSig`: [HmacTag](../SDEP/types.md#hmactag)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`HmacKey -> Request -> HmacTag -> Bit`

</details>

Checks whether the signature is valid by comparing the computed and expected values.

### Related Properties
- [P8 — Correct Hmac Verifies](../SDEP/properties/authentication-security.md#p8--correct-hmac-verifies)
- [P9 — Wrong Hmac Fails](../SDEP/properties/authentication-security.md#p9--wrong-hmac-fails)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
isValidSignature key req providedSig =
    hmacSha256 key req == providedSig
```

</details>
