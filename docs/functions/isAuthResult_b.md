# `isAuthResult_b`  🧩

> 🧩 **Model abstraction.** Well-formedness predicate over the AuthResult ABI byte — a modeling precondition, not standalone code. No production function is proven equivalent to this definition on this page.

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
isAuthResult_b r = r <= AR_VaultUnavailable_b
```

> **Not yet verified.**

Checks whether the auth result b is valid for the given inputs.

### Related Properties
- [P1 — Active Key Cannot Be Reactivated](../properties/key-lifecycle-safety.md#p1--active-key-cannot-be-reactivated)
- [P5 — Disabled Fleet Rejects Everything](../properties/key-lifecycle-safety.md#p5--disabled-fleet-rejects-everything)
- [P10 — Missing Metadata Is Unauthorized](../properties/authentication-security.md#p10--missing-metadata-is-unauthorized)
- [P21 — Activate Without Metadata Is Unauthorized](../properties/error-handling.md#p21--activate-without-metadata-is-unauthorized)

