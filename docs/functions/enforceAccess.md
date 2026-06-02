# `enforceAccess`

### Signature

**Parameters**
- `mode`: [8]
- `decision`: [8]

**Returns**
- [16]

<details><summary>Raw signature</summary>

`[8] -> [8] -> [16]`

</details>

### Formal definition (Cryptol)

```haskell
enforceAccess mode decision =
  if mode == AM_Off_b then packOutcome True False
   | mode == AM_Audit_b then
        (if decision == AD_Deny_b then packOutcome True True
         else                          packOutcome True False)
   | mode == AM_Enforce_b then
        (if decision == AD_Allow_b  then packOutcome True  False
          | decision == AD_Deny_b   then packOutcome False True
          | decision == AD_NoRule_b then packOutcome True  False
         else                            packOutcome True  False)
  else                                   packOutcome True  False
```

Evaluates 8 conditions on `mode` and `decision` in priority order, returning the first applicable 16 bits. Defaults to `packOutcome True  False` when no prior condition matches.

```mermaid
flowchart TD
  Start(["enforceAccess"])
  Start --> C0{"mode == AM_Off_b"}
  C0 -->|Yes| R0("packOutcome True False")
  C0 -->|No| C1{"mode == AM_Audit_b"}
  C1 -->|No| R1("packOutcome True False)")
  R1 --> C2{"mode == AM_Enforce_b"}
  C2 -->|No| C3{"decision == AD_Deny_b"}
  C3 -->|Yes| R2("packOutcome False True")
  C3 -->|No| C4{"decision == AD_NoRule_b"}
  C4 -->|Yes| R3("packOutcome True  False")
  C4 -->|No| R4("packOutcome True  False)")
  R4 --> R5("packOutcome True  False")
  classDef default fill:#e8f4fd,stroke:#2196F3,stroke-width:2px,color:#1565C0
  style Start fill:#1565C0,stroke:#0D47A1,color:#fff,stroke-width:2px
```

### Related Properties
- [P11 — Access Off Allows Without Logging](../properties/access-control.md#p11--access-off-allows-without-logging)
- [P12 — Access Audit Never Denies](../properties/access-control.md#p12--access-audit-never-denies)
- [P13 — Access Enforce Blocks Denials](../properties/access-control.md#p13--access-enforce-blocks-denials)
- [P14 — Access Enforce Allows Permitted](../properties/access-control.md#p14--access-enforce-allows-permitted)
- [P26 — Enforce Without Rule Allows Silently](../properties/enforce-access-matrix-coverage-closures.md#p26--enforce-without-rule-allows-silently)
- [P27 — Audit Logs Only On Denial](../properties/enforce-access-matrix-coverage-closures.md#p27--audit-logs-only-on-denial)
- [P30 — Audit Equals Enforce](../properties/intentional-counterexamples.md#p30--audit-equals-enforce)

