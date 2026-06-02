# `hmacSha256`  `internal helper`

### Signature

**Parameters**
- `k`: [HmacKey](../types.md#hmackey)
- `r`: [Request](../types.md#request)

**Returns**
- [HmacTag](../types.md#hmactag)

<details><summary>Raw signature</summary>

`HmacKey -> Request -> HmacTag`

</details>

### Formal definition (Cryptol)

```haskell
hmacSha256 k r = k ^ r ^ (r <<< 1)   // placeholder; specs only use equality
```

Uninterpreted in proofs (SAW can treat this as a Cryptol primitive).

### Related Properties
- [P8 — Correct Hmac Verifies](../properties/authentication-security.md#p8--correct-hmac-verifies)
- [P9 — Wrong Hmac Fails](../properties/authentication-security.md#p9--wrong-hmac-fails)

