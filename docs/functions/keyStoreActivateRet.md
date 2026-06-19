# `keyStoreActivateRet`  📄

> 📄 **Spec-only.** This definition lives in the Cryptol model on purpose — typically as a gap-exhibiting reference function — and has **no production implementation**.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]
- `kid`: [16][8]

**Returns**
- [8]

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> [16][8] -> [8]`

</details>

### Formal definition (Cryptol)

```haskell
keyStoreActivateRet pre kid =
  if ~ (ksEngaged pre)      then AC_IoFailure_b
   | ~ (ksIdMatch pre kid)  then AC_IoFailure_b
   | ksWasActive pre        then AC_AlreadyActive_b
  else                           AC_Success_b
```

> **Not yet verified.**

Returned ActivationResult byte — structurally identical to the C++
branch ladder, same branch order.

```mermaid
flowchart TD
  Start(["keyStoreActivateRet"])
  Start --> C0{"~ (ksEngaged pre)"}
  C0 -->|Yes| R0("AC_IoFailure_b")
  C0 -->|No| C1{"~ (ksIdMatch pre kid)"}
  C1 -->|Yes| R1("AC_IoFailure_b")
  C1 -->|No| C2{"ksWasActive pre"}
  C2 -->|Yes| R2("AC_AlreadyActive_b")
  C2 -->|No| R3("AC_Success_b")
  classDef default fill:#e8f4fd,stroke:#2196F3,stroke-width:2px,color:#1565C0
  style Start fill:#1565C0,stroke:#0D47A1,color:#fff,stroke-width:2px
```

### Related Properties
- [KS2 — Success Implies Active](../properties/prove).md#ks2--success-implies-active)
- [KS4 — Io Failure No Effect](../properties/prove).md#ks4--io-failure-no-effect)

