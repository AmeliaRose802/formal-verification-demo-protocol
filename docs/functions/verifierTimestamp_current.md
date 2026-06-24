# `verifierTimestamp_current`  🧩  `internal helper`

> 🧩 **Model abstraction.** modeling stand-in for the verifier's clock source; uses the request-bound timestamp in the bounded model. No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `r`: [StructuredRequest](../types.md#structuredrequest)
- `_`: [64]

**Returns**
- [64]

<details><summary>Raw signature</summary>

`StructuredRequest -> [64] -> [64]`

</details>

### Formal definition (Cryptol)

```haskell
verifierTimestamp_current r _ = r.timestamp
```

Computes 64 bits from `r` and `_`.

### Related Properties
- [P29 — Verifier Uses Request Bound Timestamp](../properties/structured-request-properties.md#p29--verifier-uses-request-bound-timestamp)

