# `classifyCanonicalHost`  ⚠️

> ⚠️ **Implemented, unverified.** This function exists in the codebase but **no machine-checked equivalence proof** has been discharged. Real implementation: `C:/Users/ameliapayne/demo_protocol/cpp/include/sdep/decision.hpp`. Proof has not been attempted yet.

### Signature

**Parameters**
- `host`: [32][8]
- `hostLen`: [8]

**Returns**
- [8]

<details><summary>Raw signature</summary>

`[32][8] -> [8] -> [8]`

</details>

### Formal definition (Cryptol)

```haskell
classifyCanonicalHost host hostLen =
  if hostLen == 0 \/ hostLen > 32 then CH_Unknown_b
   | hasUserinfo host hostLen      then CH_UserinfoPresent_b
   | isImdsAlias host hostLen      then CH_Imds_b
   | isWireServerAlias host hostLen then CH_WireServer_b
  else                                  CH_Unknown_b
```

> **Not yet verified.**

Evaluates 5 conditions on `host` and `hostLen` in priority order, returning the first applicable 8 bits. Defaults to `CH_Unknown_b` when no prior condition matches.

```mermaid
flowchart TD
  Start(["classifyCanonicalHost"])
  Start --> C0{"hostLen == 0 \/ hostLen > 32"}
  C0 -->|Yes| R0("CH_Unknown_b")
  C0 -->|No| C1{"hasUserinfo host hostLen"}
  C1 -->|Yes| R1("CH_UserinfoPresent_b")
  C1 -->|No| C2{"isImdsAlias host hostLen"}
  C2 -->|Yes| R2("CH_Imds_b")
  C2 -->|No| C3{"isWireServerAlias host hostLen"}
  C3 -->|Yes| R3("CH_WireServer_b")
  C3 -->|No| R4("CH_Unknown_b")
  classDef default fill:#e8f4fd,stroke:#2196F3,stroke-width:2px,color:#1565C0
  style Start fill:#1565C0,stroke:#0D47A1,color:#fff,stroke-width:2px
```

