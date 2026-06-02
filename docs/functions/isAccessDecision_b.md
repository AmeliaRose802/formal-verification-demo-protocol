# `isAccessDecision_b`

### Signature

**Parameters**
- `d`: [8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
isAccessDecision_b d = d <= AD_NoRule_b
```

Checks whether the access decision b is valid for the given inputs.

### Related Properties
- [P11 — Access Off Allows Without Logging](../properties/access-control.md#p11--access-off-allows-without-logging)
- [P12 — Access Audit Never Denies](../properties/access-control.md#p12--access-audit-never-denies)
- [P27 — Audit Logs Only On Denial](../properties/enforce-access-matrix-coverage-closures.md#p27--audit-logs-only-on-denial)
- [P30 — Audit Equals Enforce](../properties/intentional-counterexamples.md#p30--audit-equals-enforce)

