# Functions

| Function | Description |
|----------|-------------|
| [inWindow](inWindow.md) | For bug #12: 3x std::int64_t typed parameters. |
| [isNonNull](isNonNull.md) | For bug #11: void* in C++; model as a 64-bit address on the Cryptol side. |

### Call Graph

```mermaid
graph LR
  inWindow["inWindow"]
  click inWindow "functions/inWindow.md" "inWindow"
  isNonNull["isNonNull"]
  click isNonNull "functions/isNonNull.md" "isNonNull"
  classDef default fill:#f8fafc,stroke:#475569,stroke-width:1.5px,color:#0f172a
  classDef decision fill:#ecfeff,stroke:#0e7490,stroke-width:1.5px,color:#164e63
  classDef stub fill:#fff7ed,stroke:#c2410c,stroke-width:1.5px,stroke-dasharray: 5 5,color:#7c2d12
```

