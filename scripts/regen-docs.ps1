# Regenerate the published docs + proof_manifest by invoking pretty-specs'
# native `--pipeline` orchestrator with the canonical arguments for this repo.
# See extra_docs/regenerate-and-publish.md for full context.
#
# Usage:   pwsh -NoProfile -File scripts/regen-docs.ps1
# Output:  docs/, proof_manifest.json, verify_out/, pipeline.log

[CmdletBinding()]
param(
    [string]$PrettySpecs = "C:\Users\ameliapayne\pretty-specs\target\release\pretty-specs.exe",
    [string]$SawSpecGen  = "C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe"
)

$ErrorActionPreference = "Stop"
Set-Location (Split-Path $PSScriptRoot -Parent)

# Clean prior outputs so we never publish a stale mixture.
Remove-Item -Recurse -Force verify_out, docs, proof_manifest.json, pipeline.log -ErrorAction SilentlyContinue

# Keep the root implementation inventory aligned with the fuller sidecar so the
# coverage matrix can list implemented-but-unverified functions instead of
# collapsing to the decision-surface subset.
$inventorySource = Join-Path $PSScriptRoot '..\cpp\saw\implementation_inventory.json'
$inventoryTarget = Join-Path (Get-Location) 'implementation_inventory.json'
if (-not (Test-Path $inventorySource)) {
    throw "Missing implementation inventory: $inventorySource"
}
Copy-Item $inventorySource $inventoryTarget -Force

# Temporary pipeline workaround:
# pretty-specs currently mis-associates functions when `--impl` points at the
# whole `cpp/src` directory. For SDEP_cpp.cry's decision functions we must bind
# verification to the TU that actually defines those symbols.
$implFile = Join-Path (Get-Location) 'cpp\src\decision.cpp'
if (-not (Test-Path $implFile)) {
    throw "Missing implementation file: $implFile"
}

# `--docfx` is passed explicitly: the native pipeline (unlike the old
# pipeline.ps1) does not auto-detect docfx.json, and DocFX needs the emitted
# toc.yml for its navbar. Cryptol-only helpers with no C++ symbol soft-skip as
# not_attempted by default.
$pipelineArgs = @(
    'cpp\saw\SDEP_cpp.cry',
    '--pipeline',
    '--impl', $implFile,
    '--impl-lang', 'cpp',
    '--saw-spec-gen', $SawSpecGen,
    '--cxx-include-dir', 'cpp\include',
    '--cxx-standard', 'c++20',
    '--verify-output', 'verify_out',
    '--manifest-output', 'proof_manifest.json',
    '-o', 'docs',
    '--docfx',
    '--logo', 'assets\sat-pudding.png',
    '--favicon', 'assets\fabicon.png',
    '--extra-docs', 'extra_docs:Formal Verification'
)

& $PrettySpecs @pipelineArgs *>&1 | Tee-Object pipeline.log

"----EXIT=$LASTEXITCODE" | Tee-Object -Append pipeline.log
exit $LASTEXITCODE
