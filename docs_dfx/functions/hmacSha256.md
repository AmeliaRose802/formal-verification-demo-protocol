# `hmacSha256`  `internal helper`

### Signature

**Parameters**
- `k`: [HmacKey](../SDEP/types.md#hmackey)
- `r`: [Request](../SDEP/types.md#request)

**Returns**
- [HmacTag](../SDEP/types.md#hmactag)

<details><summary>Raw signature</summary>

`HmacKey -> Request -> HmacTag`

</details>

Uninterpreted in proofs (SAW can treat this as a Cryptol primitive).

### Related Properties
- [P8 — Correct Hmac Verifies](../SDEP/properties/authentication-security.md#p8--correct-hmac-verifies)
- [P9 — Wrong Hmac Fails](../SDEP/properties/authentication-security.md#p9--wrong-hmac-fails)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
hmacSha256 k r = k ^ r ^ (r <<< 1)   // placeholder; specs only use equality
```

</details>
