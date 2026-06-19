# `loggedOf`  🧩

> 🧩 **Model abstraction.** Accessor over the packed enforceAccess outcome; modeling helper, exercised via the enforceAccess proof. No production function is proven equivalent to this definition on this page.

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
loggedOf  r = (r && 0x0100) != 0
```

> **Not yet verified.**

Tests whether `r` is well-formed.

### Related Properties
- [P11 — Access Off Allows Without Logging](../properties/access-control.md#p11--access-off-allows-without-logging)
- [P13 — Access Enforce Blocks Denials](../properties/access-control.md#p13--access-enforce-blocks-denials)
- [P14 — Access Enforce Allows Permitted](../properties/access-control.md#p14--access-enforce-allows-permitted)
- [P26 — Enforce Without Rule Allows Silently](../properties/enforce-access-matrix-coverage-closures.md#p26--enforce-without-rule-allows-silently)
- [P27 — Audit Logs Only On Denial](../properties/enforce-access-matrix-coverage-closures.md#p27--audit-logs-only-on-denial)

