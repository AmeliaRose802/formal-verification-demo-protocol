# `allowedOf`

### Signature

**Parameters**
- `r`: [16]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[16] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
allowedOf r = (r && 0x0001) != 0
```

[enforceAccess](enforceAccess.md) result extractors
[enforceAccess](enforceAccess.md) packs the EnforceOutcome struct into one i16 with
little-endian byte order: low byte = allowed (0 or 1), high byte =
logged (0 or 1). These helpers project the i16 back to Bits.

### Related Properties
- [P11 — Access Off Allows Without Logging](../properties/access-control.md#p11--access-off-allows-without-logging)
- [P12 — Access Audit Never Denies](../properties/access-control.md#p12--access-audit-never-denies)
- [P13 — Access Enforce Blocks Denials](../properties/access-control.md#p13--access-enforce-blocks-denials)
- [P14 — Access Enforce Allows Permitted](../properties/access-control.md#p14--access-enforce-allows-permitted)
- [P26 — Enforce Without Rule Allows Silently](../properties/enforce-access-matrix-coverage-closures.md#p26--enforce-without-rule-allows-silently)
- [P30 — Audit Equals Enforce](../properties/intentional-counterexamples.md#p30--audit-equals-enforce)

