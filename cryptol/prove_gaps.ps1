# Prove every `property` declaration in SDEP_gaps.cry — and PASS the
# script iff every property FAILS with a counterexample. Each property
# encodes an attacker-visible gap (see the "Known Gaps" section of the
# rendered docs site); a counterexample is the concrete attack.
#
# If a future change closes a gap, the corresponding property will start
# proving Q.E.D.; this script flags that as an UNEXPECTED-PASS so the
# regression list and the docs site can be updated in lock-step.
#
# Usage:
#   pwsh ./prove_gaps.ps1
#   pwsh ./prove_gaps.ps1 -CryptolExe 'C:\path\to\cryptol.exe'

[CmdletBinding()]
param(
    [string] $SpecFile   = (Join-Path $PSScriptRoot 'SDEP_gaps.cry'),
    # Empty default — discovered from $env:CRYPTOL_EXE or PATH below.
    [string] $CryptolExe = ''
)

$ErrorActionPreference = 'Stop'

if (-not $CryptolExe) { $CryptolExe = [Environment]::GetEnvironmentVariable('CRYPTOL_EXE') }
if (-not $CryptolExe -or -not (Test-Path $CryptolExe)) {
    $found = Get-Command cryptol -ErrorAction SilentlyContinue
    if ($found) { $CryptolExe = $found.Path }
    else { throw "cryptol not found. Set `$env:CRYPTOL_EXE, pass -CryptolExe <path>, or add cryptol to PATH." }
}
if (-not (Test-Path $SpecFile)) { throw "Gap spec file not found: $SpecFile" }

$props = Select-String -Path $SpecFile -Pattern '^\s*property\s+([A-Za-z_][A-Za-z0-9_]*)' |
         ForEach-Object { $_.Matches[0].Groups[1].Value }

if (-not $props) { throw "No `property` declarations found in $SpecFile" }

Write-Host "Found $($props.Count) gap properties in $SpecFile" -ForegroundColor Cyan
Write-Host '  Expecting EACH to FAIL with a counterexample (= gap is real).' -ForegroundColor DarkGray

$specDir  = Split-Path -Parent (Resolve-Path $SpecFile)
$specName = Split-Path -Leaf   $SpecFile
$batch    = Join-Path ([System.IO.Path]::GetTempPath()) "prove_gaps_$([guid]::NewGuid()).icry"
$lines    = @(":load $specName") + ($props | ForEach-Object { ":prove $_" }) + @(':quit')
Set-Content -Path $batch -Value ($lines -join "`n") -Encoding ASCII

Push-Location $specDir
try {
    $raw = & $CryptolExe -b $batch 2>&1 | Out-String
} finally {
    Pop-Location
    Remove-Item $batch -ErrorAction SilentlyContinue
}

# Parse the cryptol output. For each :prove we expect either:
#   "Q.E.D."        => the property PROVED (which here means the gap is
#                       CLOSED — we record this as UNEXPECTED-PASS).
#   "Counterexample" + the cex line => the property is DISPROVED
#                       (which is the EXPECTED behaviour: gap is real).
$results = [System.Collections.Generic.List[object]]::new()
$idx = 0
$pendingCex = $null

foreach ($line in $raw -split '\r?\n') {
    if ($line -match '^Q\.E\.D\.') {
        $results.Add([pscustomobject]@{
            Property = $props[$idx]; Verdict = 'UNEXPECTED-PASS'; Detail = ''
        })
        $idx++
    }
    elseif ($line -match '^Counterexample') {
        $pendingCex = ''
    }
    elseif ($pendingCex -ne $null -and $line -match '^\s*\S') {
        if ($line -notmatch '^\(Total Elapsed') {
            $pendingCex = $line.Trim()
            $results.Add([pscustomobject]@{
                Property = $props[$idx]
                Verdict  = 'EXPECTED-FAIL'
                Detail   = $pendingCex
            })
            $idx++
            $pendingCex = $null
        }
    }
}

Write-Host ''
Write-Host '════════════════════════════════════════════════════════' -ForegroundColor Cyan
Write-Host '  GAP-REGRESSION SUMMARY' -ForegroundColor Cyan
Write-Host '════════════════════════════════════════════════════════' -ForegroundColor Cyan

foreach ($r in $results) {
    $color = if ($r.Verdict -eq 'EXPECTED-FAIL') { 'Yellow' } else { 'Red' }
    $line  = "  {0,-45} {1}" -f $r.Property, $r.Verdict
    if ($r.Detail) { $line += "   $($r.Detail)" }
    Write-Host $line -ForegroundColor $color
}

$expectedFail   = ($results | Where-Object Verdict -eq 'EXPECTED-FAIL').Count
$unexpectedPass = ($results | Where-Object Verdict -eq 'UNEXPECTED-PASS').Count
Write-Host ''
Write-Host ("  {0} gaps confirmed (expected FAIL), {1} unexpected PASS (gap closed?)" `
            -f $expectedFail, $unexpectedPass) -ForegroundColor Cyan

# This script's exit code is INVERTED relative to prove_all.ps1:
#   - exit 0 when every gap property has a counterexample (the gap regression
#     list is intact).
#   - exit 1 when any gap property proves Q.E.D. — the spec/impl was changed
#     and the gap row should be moved to the "fixed" column in the docs site.
if ($unexpectedPass -gt 0) { exit 1 }
if ($expectedFail -ne $props.Count) {
    Write-Host '  Parse error: expected counterexamples not collected for every property.' `
        -ForegroundColor Red
    exit 2
}
exit 0
