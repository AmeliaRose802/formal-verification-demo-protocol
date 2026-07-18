# TLA+ model checking for MSP/SDEP

This directory adds a TLA+ state-machine model for the MSP/SDEP control logic and
a TLC runner that can be invoked standalone or via `verify_all.ps1`.

## What is modeled

- Key lifecycle monotonicity: `NoKey -> Provisional -> Active`.
- Activation gate: only authenticated requests can transition `Provisional -> Active`.
- Access mode semantics for `Off`, `Audit`, and `Enforce`:
  - `Off`: always allow, never log.
  - `Audit`: always allow, log denied decisions.
  - `Enforce`: deny when decision is deny, and log denied decisions.

## Files

- `MSP.tla`: TLA+ model.
- `MSP.cfg`: TLC model-check config.
- `run.ps1`: PowerShell driver for TLC.
- `tlc_run.log`: latest TLC run log (generated).

## Prerequisites

- Java 11+ available on `PATH`.
- `tla2tools.jar` from the public TLA+ tools releases:
  - https://github.com/tlaplus/tlaplus/releases

Set either:

- `TLA2TOOLS_JAR` environment variable to the full path of `tla2tools.jar`, or
- place `tla2tools.jar` at one of these paths:
  - `tla/tla2tools.jar`
  - `tla/tools/tla2tools.jar`
  - `%USERPROFILE%/.demo_protocol/tla/tla2tools.jar`

## Run

```pwsh
pwsh -NoProfile -File tla/run.ps1
```

A successful run prints `TLA_RESULT: PASS`.
If prerequisites are missing, it prints `TLA_RESULT: SKIPPED` and exits `0`.
