---
uid: SDEP_small
title: SDEP Small Demo Spec
---

# SDEP Small Demo Spec

## Types

All type definitions: [types.md](types.md)

## Functions

All function definitions: [functions](functions/index.md)

### Call Graph

```mermaid
graph LR
  inWindow["inWindow"]
  click inWindow "functions/inWindow.md" "inWindow"
  isNonNull["isNonNull"]
  click isNonNull "functions/isNonNull.md" "isNonNull"
  pickGreater["pickGreater"]
  click pickGreater "functions/pickGreater.md" "pickGreater"
  classDef default fill:#f8fafc,stroke:#475569,stroke-width:1.5px,color:#0f172a
  classDef decision fill:#ecfeff,stroke:#0e7490,stroke-width:1.5px,color:#164e63
  classDef stub fill:#fff7ed,stroke:#c2410c,stroke-width:1.5px,stroke-dasharray: 5 5,color:#7c2d12
```

## Security Properties

| Category | Properties |
|----------|------------|
| [signed timestamp arithmetic](properties/signed-timestamp-arithmetic.md) | P1–P2 |
| [void* pointer-value](properties/void-pointer-value.md) | P3–P4 |
| [signed max](properties/signed-max.md) | P5–P7 |

