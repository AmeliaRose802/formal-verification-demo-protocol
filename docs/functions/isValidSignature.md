# `isValidSignature`  🔒  `internal helper`

> 🔒 **Trusted assumption — not proven here.** deliberate override — signature verification is an assumed contract over the real HMAC. Any proof that depends on this definition inherits that assumption.

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

Signature check is a thin equality over the assumed HMAC; the C++ side
delegates to a real verifier that is trusted, not proven, at this layer.

### Related Properties
- [P8 — Correct Hmac Verifies](../properties/authentication-security.md#p8--correct-hmac-verifies)
- [P9 — Wrong Hmac Fails](../properties/authentication-security.md#p9--wrong-hmac-fails)

