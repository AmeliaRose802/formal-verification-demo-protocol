# Regenerate the published docs + proof_manifest by invoking pretty-specs'
# native `--pipeline` orchestrator with the canonical arguments for this repo.
# See extra_docs/regenerate-and-publish.md for full context.
#
# crystal-cryptal (pretty-specs) v0.5.0+ ships a built-in `--pipeline` flag that
# chains every step the old vendored pipeline.ps1 used to drive:
#   0. render docs        1. emit function list
#   2. saw-spec-gen verify-cpp per function (native CLI — no verify.ps1 wrapper)
#   3. adapt results -> proof_manifest.json
#   4. re-render docs with proof badges
# so the vendored scripts/vendor/pipeline.ps1 (and the -SawSpecGenRoot it needed
# to locate verify.ps1) are no longer required.
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

# Build the implementation inventory from ALL C++ production files so coverage
# reflects the whole implementation surface (not just decision.cpp).
$implFiles = @(Get-ChildItem -Path 'cpp\src' -Filter '*.cpp' -File | Sort-Object Name)
if ($implFiles.Count -eq 0) {
    throw 'No C++ implementation files found under cpp/src/*.cpp'
}

$implArgs = @()
foreach ($f in $implFiles) {
    $implArgs += @('--impl', $f.FullName)
}

# `--docfx` is passed explicitly: the native pipeline (unlike the old
# pipeline.ps1) does not auto-detect docfx.json, and DocFX needs the emitted
# toc.yml for its navbar. Cryptol-only helpers with no C++ symbol soft-skip as
# not_attempted by default (pretty-specs passes --spec-only-on-missing unless
# --strict-on-missing is set).
$pipelineArgs = @(
    'cpp\saw\SDEP_cpp.cry',
    '--pipeline'
) + $implArgs + @(
    '--impl-lang', 'cpp',
    '--saw-spec-gen', $SawSpecGen,
    '--cxx-include-dir', 'cpp\include',
    '--cxx-standard', 'c++20',
    '--clang-flag', '-fexceptions',
    '--clang-flag', '-fno-inline',
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
