# End-to-end SDEP verification.
#
# Four-layer proof obligation:
#   (1) SAW + Z3: every C++ decision function in cpp/include/sdep/*.hpp
#       is behaviorally equivalent to its byte-width Cryptol model in
#       cpp/saw/SDEP_cpp.cry.
#   (2) SAW + Z3: every pure decision function in rust/src/lib.rs is
#       behaviorally equivalent to its Rust-ABI Cryptol model in
#       rust/saw/SDEP_rust.cry.
#   (3) Cryptol + Z3: every `property` declaration in cpp/saw/SDEP_cpp.cry
#       (the same C++ ABI spec layer 1 proves the C++ code equals)
#       holds.  Layers 1+3 together transfer those properties to the
#       C++ implementation by Cryptol equality — no bridging proof to
#       a separate spec is required.
#   (4) Cryptol + Z3 (gap regression): every `property` declaration in
#       cryptol/SDEP_gaps.cry encodes an obligation the protocol does
#       NOT meet — each must DISPROVE with a counterexample. A
#       Q.E.D. there means the gap was silently closed and the
#       "Known Gaps" row in the rendered docs site must be updated.
#
# Layer 2 currently still references SDEP_rust.cry; the Rust↔property
# chain will be unified in a follow-up.
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

# Auto-source the toolchain env file written by scripts/ci-install.ps1
# if the user hasn't already set the per-tool env vars in this shell.
# Lets `pwsh ./verify_all.ps1` Just Work once you've run ci-install.ps1
# locally, without needing to dot-source anything yourself. CI sets
# the vars via GITHUB_ENV so this block is a no-op there.
$userHome = if ($env:HOME) { $env:HOME } else { $env:USERPROFILE }
$envFile  = Join-Path $userHome '.demo_protocol/env.ps1'
if ((Test-Path $envFile) -and -not $env:SAW_EXE) {
    . $envFile
    Write-Host "Sourced toolchain env from $envFile" -ForegroundColor DarkGray
}

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

    # Functions blocked by an open saw-spec-gen bug (see
    # SAW_SPEC_GEN_BUG_REPORT_*.md). These are tracked as KNOWN-BUG
    # rather than ERROR so the pipeline doesn't go red while the
    # upstream tooling fix is in flight. (Empty: the three cases that
    # previously needed hand-written specs (`enforceAccess`, `getStatus`,
    # `canonicalize_lp`) are now auto-generated end-to-end via
    # saw-spec-gen — `enforceAccess` through register-return support,
    # `getStatus` by selecting the -O1 bitcode flavour (Bc='O1'), and
    # `canonicalize_lp` through the buffer-override CLI flags
    # `--in-buffer-size`, `--out-buffer-param`, `--cryptol-fn-out`,
    # `--max-len-precond`, and `--cryptol-arg-order`.)
    $sawKnownBugs = @{}

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
        if ($verdict -ne 'VERIFIED' -and $sawKnownBugs.ContainsKey($t)) {
            $sawResults += [pscustomobject]@{
                Fn      = $t
                Verdict = 'KNOWN-BUG'
                Detail  = $sawKnownBugs[$t]
            }
        } else {
            $sawResults += [pscustomobject]@{ Fn = $t; Verdict = $verdict }
        }
    }

    # ── Layer 1b: stateful KeyStore methods ───────────────────────────
    # The pure decision functions above are value-in/value-out. The
    # KeyStore lifecycle methods (activate / provision / hasKey /
    # isActive) are STATEFUL — they mutate or read the object under a
    # std::mutex and return aggregates through an sret optional. Those
    # are proven by a dedicated compositional harness
    # (cpp/saw/keystore_specs.saw) driven by run_keystore.ps1, which
    # loads the REAL production bitcode of cpp/src/key_store.cpp and
    # verifies each mangled symbol against the keyStore* Cryptol models.
    # The KeyStore harness (keystore_specs.saw) is MSVC-ABI specific: it
    # pins MSVC-mangled symbol names (`?activate@KeyStore@sdep@@...`), the
    # MSVC CRT mutex primitives (`_Mtx_lock` / `_Mtx_unlock`), and the
    # 80-byte MSVC `std::mutex` object layout. None of that holds for a
    # native Linux / libstdc++ build, so these proofs only run on Windows.
    # Linux CI still proves the pure decision functions (Layer 1 above) and
    # all Cryptol properties (Layers 3-4); the stateful proofs are covered
    # by the Windows job.
    $ksScript      = Join-Path $sawDir 'run_keystore.ps1'
    $isWindowsHost = $IsWindows -or $env:OS -eq 'Windows_NT'
    if ((Test-Path $ksScript) -and $isWindowsHost) {
        $ksArgv = @()
        if ($SkipBuild) { $ksArgv += '-SkipBuild' }
        $ksLog = & pwsh -NoProfile -File $ksScript @ksArgv 2>&1 | Out-String
        Write-Host $ksLog
        $ksMethods = @(
            @{ Fn='KeyStore::activate';          Sym='activate' }
            @{ Fn='KeyStore::provision (fresh)'; Sym='provision (fresh enrolment)' }
            @{ Fn='KeyStore::provision (TOFU)';  Sym='provision (TOFU lock)' }
            @{ Fn='KeyStore::hasKey';            Sym='hasKey' }
            @{ Fn='KeyStore::isActive';          Sym='isActive' }
        )
        $ksAllOk = ($ksLog -match 'ALL KEYSTORE PROOFS SUCCEEDED')
        foreach ($km in $ksMethods) {
            $verdict = if ($ksAllOk -and ($ksLog -match ("PROVED " + [regex]::Escape($km.Sym)))) {
                'VERIFIED'
            } elseif ($ksLog -match 'Counterexample|Proof failed') {
                'COUNTEREXAMPLE'
            } else {
                'ERROR'
            }
            $sawResults += [pscustomobject]@{ Fn = $km.Fn; Verdict = $verdict }
        }
    } elseif (-not $isWindowsHost) {
        Write-Host '  (skipping stateful KeyStore proofs: keystore_specs.saw is MSVC-ABI specific; covered by the Windows job)' -ForegroundColor DarkGray
    } else {
        Write-Warning "Missing $ksScript — skipping stateful KeyStore proofs"
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
    Write-Banner 'Layer 3: Cryptol  —  prove all `property` declarations on the C++ ABI spec'

    $cryScript = Join-Path $root 'cryptol\prove_all.ps1'
    $specFile  = Join-Path $root 'cpp\saw\SDEP_cpp.cry'
    if (-not (Test-Path $cryScript)) { throw "Missing $cryScript" }

    # Run prove_all.ps1 against the C++ ABI spec — the same Cryptol file
    # SAW (Layer 1) shows the C++ code equals.  This gives an unbroken
    # chain: C++ ≡ SDEP_cpp.cry (Layer 1) AND SDEP_cpp.cry satisfies
    # P1…P29 (Layer 3) → the C++ code satisfies P1…P29.
    #
    # `-AllowFailures` is passed because the spec deliberately includes
    # intentional-counterexample properties (P30+) for the rendered docs.
    # We re-classify those below using their `EXPECTED VERDICT: FAILS`
    # doc markers so a real regression still fails the build.
    $log = & pwsh -NoProfile -File $cryScript -SpecFile $specFile -AllowFailures 2>&1 | Out-String
    Write-Host $log

    # Build the set of properties whose doc-comment block declares
    # "EXPECTED VERDICT: FAILS" — counterexamples on these are intended.
    $expectedFail = @{}
    $specText = Get-Content -Raw $specFile
    $lines = $specText -split "`r?`n"
    $pendingExpected = $false
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $l = $lines[$i]
        if ($l -match '^\s*//.*EXPECTED VERDICT:\s*FAILS') {
            $pendingExpected = $true
            continue
        }
        if ($l -match '^\s*property\s+([A-Za-z_][A-Za-z0-9_]*)') {
            if ($pendingExpected) { $expectedFail[$matches[1]] = $true }
            $pendingExpected = $false
            continue
        }
        # Reset on blank line so a stray marker doesn't bleed across blocks.
        if ($l -match '^\s*$') { $pendingExpected = $false }
    }

    foreach ($line in $log -split '\r?\n') {
        if ($line -match '^\s+(P[A-Za-z0-9_]+)\s+(PASS|FAIL)\b(.*)$') {
            $name    = $matches[1]
            $rawVerd = $matches[2]
            $detail  = $matches[3].Trim()
            $verd =
                if ($expectedFail.ContainsKey($name)) {
                    if ($rawVerd -eq 'FAIL') { 'EXPECTED-FAIL' }
                    else                     { 'UNEXPECTED-PASS' }
                } else {
                    $rawVerd
                }
            $cryptolResults += [pscustomobject]@{
                Property = $name
                Verdict  = $verd
                Detail   = $detail
            }
        }
    }
}

# ──────────────────────────────────────────────────────────────────────
# Layer 4: Cryptol — gap regression. EACH `property` in SDEP_gaps.cry
# encodes an attacker-visible obligation the protocol does NOT meet;
# we PASS when each is disproved by a Z3 counterexample (= gap is real
# and exhibited), and FAIL if any unexpectedly proves Q.E.D. (= gap was
# silently closed; the "Known Gaps" row in the rendered docs needs an update).
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
        $color = switch ($r.Verdict) {
            'VERIFIED'  { 'Green' }
            'KNOWN-BUG' { 'Yellow' }
            default     { 'Red' }
        }
        $line = '  {0,-30} {1}' -f $r.Fn, $r.Verdict
        if ($r.PSObject.Properties.Match('Detail').Count -gt 0 -and $r.Detail) {
            $line += "   (see $($r.Detail))"
        }
        Write-Host $line -ForegroundColor $color
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
        $color = switch ($r.Verdict) {
            'PASS'            { 'Green' }
            'EXPECTED-FAIL'   { 'Yellow' }
            default           { 'Red' }
        }
        $line = '  {0,-45} {1}' -f $r.Property, $r.Verdict
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
$sawBug  = ($sawResults     | Where-Object Verdict -eq 'KNOWN-BUG').Count
$sawFail = ($sawResults     | Where-Object { $_.Verdict -ne 'VERIFIED' -and $_.Verdict -ne 'KNOWN-BUG' }).Count
$rusPass = ($rustResults    | Where-Object Verdict -eq 'VERIFIED').Count
$rusFail = ($rustResults    | Where-Object Verdict -ne 'VERIFIED').Count
$cryPass = ($cryptolResults | Where-Object Verdict -eq 'PASS').Count
$cryFail = ($cryptolResults | Where-Object Verdict -eq 'FAIL').Count
$cryExp  = ($cryptolResults | Where-Object Verdict -eq 'EXPECTED-FAIL').Count
$cryUnx  = ($cryptolResults | Where-Object Verdict -eq 'UNEXPECTED-PASS').Count
$gapExp  = ($gapResults     | Where-Object Verdict -eq 'EXPECTED-FAIL').Count
$gapUnx  = ($gapResults     | Where-Object Verdict -eq 'UNEXPECTED-PASS').Count

Write-Host ''
Write-Host ('  SAW C++  : {0} verified, {1} known saw-spec-gen bug, {2} not verified' -f $sawPass, $sawBug, $sawFail) -ForegroundColor Cyan
if (-not $SkipRust) {
    Write-Host ('  SAW Rust : {0} verified, {1} not verified' -f $rusPass, $rusFail) -ForegroundColor Cyan
}
Write-Host ('  Cryptol  : {0} proved,   {1} disproved (+ {2} demo counterexamples)' `
            -f $cryPass, $cryFail, $cryExp) -ForegroundColor Cyan
if (-not $SkipGaps) {
    Write-Host ('  Gaps     : {0} exhibited (expected), {1} unexpectedly closed' `
                -f $gapExp, $gapUnx) -ForegroundColor Cyan
}

if (($sawFail + $rusFail + $cryFail + $cryUnx + $gapUnx) -gt 0) { exit 1 }
exit 0
