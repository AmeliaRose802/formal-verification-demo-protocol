# Prove every `property` declaration in the spec module with Cryptol/Z3 and
# print a one-line PASS / FAIL summary per property.
#
# Usage:
#   pwsh ./prove_all.ps1
#   pwsh ./prove_all.ps1 -CryptolExe 'C:\path\to\cryptol.exe'

[CmdletBinding()]
param(
    [string] $SpecFile   = (Join-Path $PSScriptRoot 'SDEP.cry'),
    [string] $CryptolExe = 'C:\Users\ameliapayne\saw-1.5-windows-2022-X64-with-solvers\bin\cryptol.exe',
    # Optional: emit a SAW-style log (one "Proving NAME ..." + verdict per
    # property) that pretty-specs' --adapt-saw-log can ingest to attach
    # badges in the rendered docs.
    [string] $SawLogFile = '',
    # When set, treat counterexamples as informational (still printed in red,
    # still recorded as FAIL in the SAW log) but don't make the script exit 1.
    # Used by spec files that include intentional-counterexample demos so the
    # overall verification pipeline stays green.
    [switch] $AllowFailures
)

$ErrorActionPreference = 'Stop'

# Resolve cryptol: explicit path > PATH lookup.
if (-not (Test-Path $CryptolExe)) {
    $found = Get-Command cryptol -ErrorAction SilentlyContinue
    if ($found) { $CryptolExe = $found.Path }
    else { throw "cryptol not found. Pass -CryptolExe <path> or add it to PATH." }
}
if (-not (Test-Path $SpecFile)) { throw "Spec file not found: $SpecFile" }

# Extract every `property <Name> ...` declaration name from the spec.
$props = Select-String -Path $SpecFile -Pattern '^\s*property\s+([A-Za-z_][A-Za-z0-9_]*)' |
         ForEach-Object { $_.Matches[0].Groups[1].Value }

if (-not $props) { throw "No `property` declarations found in $SpecFile" }

Write-Host "Found $($props.Count) properties in $SpecFile" -ForegroundColor Cyan

# Build a single batch script: load once, prove each, quit.
# Cryptol's `:load` doesn't accept quoted paths, so we cd into the spec
# directory and load by basename — works regardless of spaces in $PSScriptRoot.
$specDir  = Split-Path -Parent (Resolve-Path $SpecFile)
$specName = Split-Path -Leaf   $SpecFile
$batch = Join-Path ([System.IO.Path]::GetTempPath()) "prove_all_$([guid]::NewGuid()).icry"
$lines = @(":load $specName") + ($props | ForEach-Object { ":prove $_" }) + @(':quit')
Set-Content -Path $batch -Value ($lines -join "`n") -Encoding ASCII

Push-Location $specDir
try {
    $raw = & $CryptolExe -b $batch 2>&1 | Out-String
} finally {
    Pop-Location
    Remove-Item $batch -ErrorAction SilentlyContinue
}

# Parse the output: cryptol emits, for each :prove, either
#   "Q.E.D."           (proved)
# or
#   "Counterexample"  followed by a counterexample line.
# Results appear in the same order as the :prove commands we sent.
$results = [System.Collections.Generic.List[object]]::new()
$idx = 0
$pendingCex = $null

foreach ($line in $raw -split '\r?\n') {
    if ($line -match '^Q\.E\.D\.') {
        $results.Add([pscustomobject]@{
            Property = $props[$idx]; Verdict = 'PASS'; Detail = ''
        })
        $idx++
    }
    elseif ($line -match '^Counterexample') {
        $pendingCex = ''
    }
    elseif ($pendingCex -ne $null -and $line -match '^\s*\S') {
        # First non-blank line after "Counterexample" is the cex itself
        # (e.g. "P23_DistinctRequestsHaveDistinctCanonicalBytes True = False").
        if ($line -notmatch '^\(Total Elapsed') {
            $pendingCex = $line.Trim()
            $results.Add([pscustomobject]@{
                Property = $props[$idx]; Verdict = 'FAIL'; Detail = $pendingCex
            })
            $idx++
            $pendingCex = $null
        }
    }
}

Write-Host ''
Write-Host '════════════════════════════════════════════════════════' -ForegroundColor Cyan
Write-Host '  SUMMARY' -ForegroundColor Cyan
Write-Host '════════════════════════════════════════════════════════' -ForegroundColor Cyan

foreach ($r in $results) {
    $color = if ($r.Verdict -eq 'PASS') { 'Green' } else { 'Red' }
    $line  = "  {0,-45} {1}" -f $r.Property, $r.Verdict
    if ($r.Detail) { $line += "   $($r.Detail)" }
    Write-Host $line -ForegroundColor $color
}

$pass = ($results | Where-Object Verdict -eq 'PASS').Count
$fail = ($results | Where-Object Verdict -eq 'FAIL').Count
Write-Host ''
Write-Host "  $pass passed, $fail failed (of $($results.Count) checked)" -ForegroundColor Cyan

# Optional pretty-specs-friendly SAW-style log.  pretty-specs's
# --adapt-saw-log expects "Proving <name> ..." followed by either
# "Q.E.D." (proven) or "Counterexample" (failed).
if ($SawLogFile) {
    $logLines = @()
    foreach ($r in $results) {
        $logLines += "Proving $($r.Property) ..."
        if ($r.Verdict -eq 'PASS') {
            $logLines += 'Q.E.D.'
        } else {
            $logLines += 'Counterexample'
            if ($r.Detail) { $logLines += "  $($r.Detail)" }
        }
    }
    Set-Content -Path $SawLogFile -Value ($logLines -join "`n") -Encoding ASCII
    Write-Host "  wrote SAW-style log to $SawLogFile" -ForegroundColor DarkGray
}

if ($fail -gt 0 -and -not $AllowFailures) { exit 1 }
