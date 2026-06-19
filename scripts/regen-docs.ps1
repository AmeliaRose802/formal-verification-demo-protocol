# Regenerate the published docs + proof_manifest by invoking pretty-specs/pipeline.ps1
# with the canonical arguments for this repo. See extra_docs/regenerate-and-publish.md
# for full context.
#
# Usage:   pwsh -NoProfile -File scripts/regen-docs.ps1
# Output:  docs/, proof_manifest.json, verify_out/, pipeline.log

[CmdletBinding()]
param(
    [string]$PrettySpecs    = "C:\Users\ameliapayne\pretty-specs\target\release\pretty-specs.exe",
    [string]$SawSpecGen     = "C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe",
    [string]$SawSpecGenRoot = "C:\Users\ameliapayne\saw-spec-gen",
    # pipeline.ps1 is vendored into this repo (crystal-cryptal's release ships
    # only the pretty-specs binary, not this script). See scripts/vendor/.
    [string]$PipelineScript = "$PSScriptRoot\vendor\pipeline.ps1"
)

$ErrorActionPreference = "Stop"
Set-Location (Split-Path $PSScriptRoot -Parent)

# Clean prior outputs so we never publish a stale mixture.
Remove-Item -Recurse -Force verify_out, docs, proof_manifest.json, pipeline.log -ErrorAction SilentlyContinue

& $PipelineScript `
    -Spec cpp\saw\SDEP_cpp.cry `
    -Impl cpp\src\decision.cpp -ImplLang cpp `
    -CxxIncludeDirs cpp\include -CxxStandard c++20 `
    -ExtraClangFlags '-fexceptions','-fno-inline' `
    -PrettySpecs $PrettySpecs `
    -SawSpecGen $SawSpecGen `
    -SawSpecGenRoot $SawSpecGenRoot `
    -Output docs -VerifyOutput verify_out `
    -ExtraDocs 'extra_docs:Formal Verification' `
    -Logo assets\sat-pudding.png `
    -Favicon assets\fabicon.png `
    *>&1 | Tee-Object pipeline.log

"----EXIT=$LASTEXITCODE" | Tee-Object -Append pipeline.log
exit $LASTEXITCODE
