# End-to-end SDEP verification.
#
# Four-layer proof obligation:
#   (1) SAW + Z3: every C++ decision function in cpp/include/sdep/*.hpp
#       is behaviorally equivalent to its byte-width Cryptol model in
#       cpp/saw/SDEP_cpp.cry.
#   (2) SAW + Z3: every pure decision function in rust/src/lib.rs is
#       behaviorally equivalent to its Rust-ABI Cryptol model in
#       rust/saw/SDEP_rust.cry (which in turn imports SDEP.cry).
#   (3) Cryptol + Z3: every `property` declaration in cryptol/SDEP.cry
#       (the bit-width spec both implementations are derived from) holds.
#   (4) Cryptol + Z3 (gap regression): every `property` declaration in
#       cryptol/SDEP_gaps.cry encodes an obligation the protocol does
#       NOT meet — each must DISPROVE with a counterexample. A
#       Q.E.D. there means the gap was silently closed and the
#       spec.md §6 "Known Gaps" row must be updated.
#
# Layers 1+2+3 together say: BOTH the C++ and Rust implementations
# satisfy the SDEP security properties from spec.md.  Layer 4 says:
# we have not forgotten the holes those properties do not cover.
#
# Usage:
#   pwsh ./verify_all.ps1               # full pipeline (rebuilds bitcode)
#   pwsh ./verify_all.ps1 -SkipBuild    # reuse cached bitcode
#   pwsh ./verify_all.ps1 -OnlyCryptol  # skip both SAW layers
#   pwsh ./verify_all.ps1 -OnlySaw      # skip the Cryptol layers
#   pwsh ./verify_all.ps1 -SkipGaps     # skip Layer 4
#   pwsh ./verify_all.ps1 -SkipRust     # skip Layer 2

[CmdletBinding()]
param(
    [switch] $SkipBuild,
    [switch] $OnlyCryptol,
    [switch] $OnlySaw,
    [switch] $SkipGaps,
    [switch] $SkipRust
)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path

function Write-Banner($text, $color = 'Cyan') {
    Write-Host ''
    Write-Host ('═' * 64) -ForegroundColor $color
    Write-Host "  $text"  -ForegroundColor $color
    Write-Host ('═' * 64) -ForegroundColor $color
}

$sawResults     = @()   # objects: @{ Fn=...; Verdict=... }
$rustResults    = @()   # objects: @{ Fn=...; Verdict=... }
$cryptolResults = @()   # objects: @{ Property=...; Verdict=...; Detail=... }
$gapResults     = @()   # objects: @{ Property=...; Verdict=...; Detail=... }

# ──────────────────────────────────────────────────────────────────────
# Layer 1: SAW — C++ ≡ Cryptol byte-width model
# ──────────────────────────────────────────────────────────────────────
if (-not $OnlyCryptol) {
    Write-Banner 'Layer 1: SAW  —  C++ implementation ≡ Cryptol model'

    $sawDir    = Join-Path $root 'cpp\saw'
    $sawScript = Join-Path $sawDir 'run.ps1'
    if (-not (Test-Path $sawScript)) { throw "Missing $sawScript" }

    $argv = @()
    if ($SkipBuild) { $argv += '-SkipBuild' }

    Push-Location $sawDir
    try {
        & pwsh -NoProfile -File $sawScript @argv 2>&1 | Tee-Object -Variable sawLog | Out-Host
    } finally { Pop-Location }

    # Read the per-target saw_run.log files that run.ps1 writes; this is
    # far more reliable than scraping the Format-Table output.
    $targets = @('authenticate','isValidRequestDate','provisionKey',
                 'enrollDevice','enforceAccess','getStatus',
                 'canonicalize_lp')
    foreach ($t in $targets) {
        $logFile = Join-Path $sawDir "out_$t\saw_run.log"
        $verdict = if (-not (Test-Path $logFile)) {
            'NO-LOG'
        } else {
            $txt = Get-Content -Raw $logFile
            if     ($txt -match 'Proof succeeded')        { 'VERIFIED' }
            elseif ($txt -match 'Counterexample')         { 'COUNTEREXAMPLE' }
            elseif ($txt -match 'Proof failed')           { 'COUNTEREXAMPLE' }
            elseif ($txt -match '(?i)\berror\b')          { 'ERROR' }
            else                                          { 'UNKNOWN' }
        }
        $sawResults += [pscustomobject]@{ Fn = $t; Verdict = $verdict }
    }
}

# ──────────────────────────────────────────────────────────────────────
# Layer 2: SAW — Rust ≡ Cryptol byte-width model (Rust-ABI view)
# ──────────────────────────────────────────────────────────────────────
if (-not $OnlyCryptol -and -not $SkipRust) {
    Write-Banner 'Layer 2: SAW  —  Rust implementation ≡ Cryptol model'

    $rustDir    = Join-Path $root 'rust\saw'
    $rustScript = Join-Path $rustDir 'run.ps1'
    if (-not (Test-Path $rustScript)) { throw "Missing $rustScript" }

    $argv = @()
    if ($SkipBuild) { $argv += '-SkipBuild' }

    $rustLog = & pwsh -NoProfile -File $rustScript @argv 2>&1 | Out-String
    Write-Host $rustLog

    # rust/saw/run.ps1 writes the full SAW log to saw_run.log; parse
    # the "Proof succeeded! <mangled-symbol>" lines and map each
    # mangled symbol back to a friendly target name.
    $rustLogFile = Join-Path $rustDir 'saw_run.log'
    $rustTargets = [ordered]@{
        'provision_key'              = '_ZN4sdep13provision_key17h'
        'enroll_device'              = '_ZN4sdep13enroll_device17h'
        'authenticate'               = '_ZN4sdep12authenticate17h'
        'enforce_access'             = '_ZN4sdep14enforce_access17h'
        'get_status'                 = '_ZN4sdep10get_status17h'
        'is_valid_request_date_secs' = '_ZN4sdep26is_valid_request_date_secs17h'
    }
    $rustTxt = if (Test-Path $rustLogFile) { Get-Content -Raw $rustLogFile } else { $rustLog }
    foreach ($name in $rustTargets.Keys) {
        $stem = [regex]::Escape($rustTargets[$name])
        $verdict =
            if     ($rustTxt -match "Proof succeeded! $stem") { 'VERIFIED' }
            elseif ($rustTxt -match "Counterexample")         { 'COUNTEREXAMPLE' }
            elseif ($rustTxt -match '(?im)^Error: ')          { 'ERROR' }
            else                                              { 'UNKNOWN' }
        $rustResults += [pscustomobject]@{ Fn = $name; Verdict = $verdict }
    }
}

# ──────────────────────────────────────────────────────────────────────
# Layer 3: Cryptol — every `property` declaration is a theorem
# ───────────────────────────────────────────────────────────────────
if (-not $OnlySaw) {
    Write-Banner 'Layer 3: Cryptol  —  prove all `property` declarations'

    $cryScript = Join-Path $root 'cryptol\prove_all.ps1'
    if (-not (Test-Path $cryScript)) { throw "Missing $cryScript" }

    # Run prove_all.ps1; it already prints a per-property summary itself,
    # and exits non-zero on failure.  We re-parse its summary lines.
    $log = & pwsh -NoProfile -File $cryScript 2>&1 | Out-String
    Write-Host $log

    foreach ($line in $log -split '\r?\n') {
        if ($line -match '^\s+(P[A-Za-z0-9_]+)\s+(PASS|FAIL)\b(.*)$') {
            $cryptolResults += [pscustomobject]@{
                Property = $matches[1]
                Verdict  = $matches[2]
                Detail   = $matches[3].Trim()
            }
        }
    }
}

# ──────────────────────────────────────────────────────────────────────
# Layer 4: Cryptol — gap regression. EACH `property` in SDEP_gaps.cry
# encodes an attacker-visible obligation the protocol does NOT meet;
# we PASS when each is disproved by a Z3 counterexample (= gap is real
# and exhibited), and FAIL if any unexpectedly proves Q.E.D. (= gap was
# silently closed; the spec.md §6 table needs an update).
# ───────────────────────────────────────────────────────────────────
if (-not $OnlySaw -and -not $SkipGaps) {
    Write-Banner 'Layer 4: Cryptol  —  attacker-visible gap regression'

    $gapScript = Join-Path $root 'cryptol\prove_gaps.ps1'
    if (-not (Test-Path $gapScript)) { throw "Missing $gapScript" }

    $gapLog = & pwsh -NoProfile -File $gapScript 2>&1 | Out-String
    Write-Host $gapLog
    $gapExit = $LASTEXITCODE

    foreach ($line in $gapLog -split '\r?\n') {
        if ($line -match '^\s+(G[A-Za-z0-9_]+)\s+(EXPECTED-FAIL|UNEXPECTED-PASS)\b(.*)$') {
            $gapResults += [pscustomobject]@{
                Property = $matches[1]
                Verdict  = $matches[2]
                Detail   = $matches[3].Trim()
            }
        }
    }
}

# ──────────────────────────────────────────────────────────────────────
# Unified report
# ──────────────────────────────────────────────────────────────────────
Write-Banner 'END-TO-END VERIFICATION REPORT' 'Magenta'

if (-not $OnlyCryptol) {
    Write-Host ''
    Write-Host 'Layer 1 — SAW (C++  ≡  Cryptol model):' -ForegroundColor Cyan
    if ($sawResults.Count -eq 0) {
        Write-Host '  (no results parsed from run.ps1 output)' -ForegroundColor Yellow
    }
    foreach ($r in $sawResults) {
        $color = if ($r.Verdict -eq 'VERIFIED') { 'Green' } else { 'Red' }
        Write-Host ('  {0,-30} {1}' -f $r.Fn, $r.Verdict) -ForegroundColor $color
    }
}

if (-not $OnlyCryptol -and -not $SkipRust) {
    Write-Host ''
    Write-Host 'Layer 2 — SAW (Rust  ≡  Cryptol model):' -ForegroundColor Cyan
    if ($rustResults.Count -eq 0) {
        Write-Host '  (no results parsed from rust/saw/run.ps1 output)' -ForegroundColor Yellow
    }
    foreach ($r in $rustResults) {
        $color = if ($r.Verdict -eq 'VERIFIED') { 'Green' } else { 'Red' }
        Write-Host ('  {0,-30} {1}' -f $r.Fn, $r.Verdict) -ForegroundColor $color
    }
}

if (-not $OnlySaw) {
    Write-Host ''
    Write-Host 'Layer 3 — Cryptol (property proofs):' -ForegroundColor Cyan
    if ($cryptolResults.Count -eq 0) {
        Write-Host '  (no results parsed from prove_all.ps1 output)' -ForegroundColor Yellow
    }
    foreach ($r in $cryptolResults) {
        $color = if ($r.Verdict -eq 'PASS') { 'Green' } else { 'Red' }
        $line  = '  {0,-45} {1}' -f $r.Property, $r.Verdict
        if ($r.Detail) { $line += "   $($r.Detail)" }
        Write-Host $line -ForegroundColor $color
    }
}

if (-not $OnlySaw -and -not $SkipGaps) {
    Write-Host ''
    Write-Host 'Layer 4 — Cryptol (attacker-visible gaps; counterexample = gap real):' -ForegroundColor Cyan
    if ($gapResults.Count -eq 0) {
        Write-Host '  (no results parsed from prove_gaps.ps1 output)' -ForegroundColor Yellow
    }
    foreach ($r in $gapResults) {
        $color = if ($r.Verdict -eq 'EXPECTED-FAIL') { 'Yellow' } else { 'Red' }
        $line  = '  {0,-45} {1}' -f $r.Property, $r.Verdict
        if ($r.Detail) { $line += "   $($r.Detail)" }
        Write-Host $line -ForegroundColor $color
    }
}

$sawPass = ($sawResults     | Where-Object Verdict -eq 'VERIFIED').Count
$sawFail = ($sawResults     | Where-Object Verdict -ne 'VERIFIED').Count
$rusPass = ($rustResults    | Where-Object Verdict -eq 'VERIFIED').Count
$rusFail = ($rustResults    | Where-Object Verdict -ne 'VERIFIED').Count
$cryPass = ($cryptolResults | Where-Object Verdict -eq 'PASS').Count
$cryFail = ($cryptolResults | Where-Object Verdict -eq 'FAIL').Count
$gapExp  = ($gapResults     | Where-Object Verdict -eq 'EXPECTED-FAIL').Count
$gapUnx  = ($gapResults     | Where-Object Verdict -eq 'UNEXPECTED-PASS').Count

Write-Host ''
Write-Host ('  SAW C++  : {0} verified, {1} not verified' -f $sawPass, $sawFail) -ForegroundColor Cyan
if (-not $SkipRust) {
    Write-Host ('  SAW Rust : {0} verified, {1} not verified' -f $rusPass, $rusFail) -ForegroundColor Cyan
}
Write-Host ('  Cryptol  : {0} proved,   {1} disproved'   -f $cryPass, $cryFail) -ForegroundColor Cyan
if (-not $SkipGaps) {
    Write-Host ('  Gaps     : {0} exhibited (expected), {1} unexpectedly closed' `
                -f $gapExp, $gapUnx) -ForegroundColor Cyan
}

if (($sawFail + $rusFail + $cryFail + $gapUnx) -gt 0) { exit 1 }
exit 0
