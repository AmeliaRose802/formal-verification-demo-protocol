# TLA+ Model Checking Layer (MSP/SDEP)

This repository now includes a TLA+ model-checking layer that complements the
SAW/Cryptol proof stack.

## Why this layer exists

SAW + Cryptol in this repo prove implementation equivalence and functional
properties of specific decision procedures. TLA+ adds a complementary check:

- temporal safety over sequences of state transitions,
- abstract protocol lifecycle constraints, and
- policy behavior that should remain true across all reachable states.

In other words, SAW/Cryptol is "code equals model and function properties hold";
TLA+ is "the abstract state machine never enters forbidden states over time".

## Sources used for model shape

Public MSP documentation:

- [Metadata Security Protocol (MSP) overview](https://learn.microsoft.com/azure/virtual-machines/metadata-security-protocol/overview)

TLA+ tooling documentation:

- [tlaplus/tlaplus repository](https://github.com/tlaplus/tlaplus)
- [TLA+ CLI usage (USE.md)](https://github.com/tlaplus/tlaplus/blob/master/USE.md)

The model intentionally mirrors the MSP-style concepts already reflected in this
repo's SDEP spec:

- strong request endorsement/authentication before sensitive transitions,
- default-closed style access control semantics,
- irreversible activation-like key lifecycle progression.

## Modeled state

The TLA+ module is at `tla/MSP.tla` and models:

- key lifecycle: `NoKey`, `Provisional`, `Active`
- authentication outcome: `Unauthenticated`, `Authenticated`, `VaultUnavailable`
- access mode: `Off`, `Audit`, `Enforce`
- access decision: `Allow`, `Deny`, `NoRule`
- realized enforcement outputs: `allowed`, `logged`

## Checked properties

`MSP.cfg` runs TLC against:

- `TypeOK`: all variables remain in declared domains
- `AccessOutcomeSound`: `allowed`/`logged` always match mode/decision rules
- `NoRollback`: key lifecycle rank never decreases
- `ActiveSticky`: once active, key state remains active
- `ActivateRequiresAuth`: only authenticated transitions can activate a key

## Running the layer

Standalone:

```pwsh
pwsh -NoProfile -File tla/run.ps1
```

Through the suite driver:

```pwsh
pwsh -NoProfile -File verify_all.ps1
```

Or run only this layer:

```pwsh
pwsh -NoProfile -File verify_all.ps1 -OnlyTla
```

## Tool prerequisites

- Java 11+
- `tla2tools.jar` (from tlaplus releases)

Set `TLA2TOOLS_JAR` to the jar path, or place it in one of the auto-discovery
locations documented in `tla/README.md`.

If tools are missing, the TLA+ layer reports `SKIPPED` instead of failing the
whole verification pipeline.
