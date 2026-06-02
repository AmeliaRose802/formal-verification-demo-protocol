# `enforceAccess`

### Signature

**Parameters**
- `mode`: [AccessMode](../types.md#accessmode)
- `decision`: [AccessDecision](../types.md#accessdecision)

**Returns**
- (Bit, Bit)

<details><summary>Raw signature</summary>

`AccessMode -> AccessDecision -> (Bit, Bit)`

</details>

### Formal definition (Cryptol)

```haskell
enforceAccess mode decision =
  if mode == AM_Off then (True, False)
   | mode == AM_Audit then
        (if decision == AD_Deny then (True, True) else (True, False))
   | mode == AM_Enforce then
        (if decision == AD_Allow  then (True,  False)
          | decision == AD_Deny   then (False, True)
         else                          (True,  False))
  else (True, False)   // unreachable for well-formed modes
```

Evaluates 6 conditions on `mode` and `decision` in priority order, returning the first applicable a tuple. Defaults to `(True, False)` when no prior condition matches.

```mermaid
flowchart TD
  Start(["enforceAccess"])
  Start --> C0{"mode == AM_Off"}
  C0 -->|Yes| R0("(True, False)")
  C0 -->|No| C1{"mode == AM_Audit"}
  C1 -->|No| C2{"mode == AM_Enforce"}
  C2 -->|No| C3{"decision == AD_Deny"}
  C3 -->|Yes| R1("(False, True)")
  C3 -->|No| R2("(True,  False))")
  R2 --> R3("(True, False)   // unreachable for well-formed modes")
  classDef default fill:#e8f4fd,stroke:#2196F3,stroke-width:2px,color:#1565C0
  style Start fill:#1565C0,stroke:#0D47A1,color:#fff,stroke-width:2px
```

### Related Properties
- [P11 — Access Off Allows Without Logging](../properties/access-control.md#p11--access-off-allows-without-logging)
- [P12 — Access Audit Never Denies](../properties/access-control.md#p12--access-audit-never-denies)
- [P13 — Access Enforce Blocks Denials](../properties/access-control.md#p13--access-enforce-blocks-denials)
- [P14 — Access Enforce Allows Permitted](../properties/access-control.md#p14--access-enforce-allows-permitted)
- [P26 — Enforce Without Rule Allows Silently](../properties/error-handling.md#p26--enforce-without-rule-allows-silently)
- [P27 — Audit Logs Only On Denial](../properties/error-handling.md#p27--audit-logs-only-on-denial)

