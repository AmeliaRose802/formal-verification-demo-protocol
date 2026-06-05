# `isActivationResult_b`  ✗

### Signature

**Parameters**
- `r`: [8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
isActivationResult_b r = r <= AC_IoFailure_b
```

> **Not yet verified.**

Checks whether the activation result b is valid for the given inputs.

### Related Properties
- [P5 — Disabled Fleet Rejects Everything](../properties/key-lifecycle-safety.md#p5--disabled-fleet-rejects-everything)
- [P10 — Missing Metadata Is Unauthorized](../properties/authentication-security.md#p10--missing-metadata-is-unauthorized)
- [P19 — Vault Unavailable Is Internal Error](../properties/error-handling.md#p19--vault-unavailable-is-internal-error)
- [P21 — Activate Without Metadata Is Unauthorized](../properties/error-handling.md#p21--activate-without-metadata-is-unauthorized)
- [P22 — Activation Io Failure Is Internal Error](../properties/error-handling.md#p22--activation-io-failure-is-internal-error)

