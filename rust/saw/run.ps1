# SDEP — Rust SAW verification driver.
#
# Proves each pure decision function in rust/src/lib.rs is
# behaviorally equivalent to its Rust-ABI Cryptol model in
# SDEP_rust.cry — which is in turn structurally identical to (and
# bridged by Cryptol :prove inside SDEP_rust.cry to) the bit-width
# spec in cryptol/SDEP.cry.
#
# Pipeline:
#   1. Build the sdep crate at -O release with #[inline(never)] on the
#      6 target decision functions so every target emits as its own
#      standalone LLVM symbol with no stdlib pollution.  (See the
#      "Rust-ABI verification" note in src/lib.rs.)
#   2. Stage the produced .bc into rust/saw/sdep.bc and disassemble
#      it to sdep.ll for symbol discovery.
#   3. Locate the mangled `_ZN4sdep<name>17h…E` symbol for each
#      target — these hashes are crate-hash-dependent and change on
#      every rebuild.
#   4. Substitute the symbols into verify_template.saw → verify.saw
#      and run SAW against the .bc.

[CmdletBinding()]
param(
    [string[]] $Only,
    [switch]   $SkipBuild,
    # Tool paths.  Empty defaults — discovered from env vars
    # (SAW_EXE, SAW_SPEC_GEN, SOLVER_BIN, RUSTUP_LLVM_BIN) or PATH below.
    [string]   $SawExe         = '',
    [string]   $SawSpecGen     = '',
    [string]   $SolverBin      = '',
    [string]   $RustupLlvmBin  = ''
)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $here

# Tool discovery: explicit -ParameterValue, then env var, then PATH.
# Identical pattern to cpp/saw/run.ps1 — keeps local dev and CI green
# without any per-environment plumbing.
function Resolve-ToolDir {
    param([string]$Current, [string]$EnvName, [string]$Probe)
    $envVal = [Environment]::GetEnvironmentVariable($EnvName)
    if ($envVal -and (Test-Path (Join-Path $envVal $Probe))) { return $envVal }
    if ($Current -and (Test-Path (Join-Path $Current $Probe))) { return $Current }
    $cmd = Get-Command ([System.IO.Path]::GetFileNameWithoutExtension($Probe)) -ErrorAction SilentlyContinue
    if ($cmd) { return Split-Path -Parent $cmd.Path }
    return $Current
}
function Resolve-ToolExe {
    param([string]$Current, [string]$EnvName, [string]$BinName)
    $envVal = [Environment]::GetEnvironmentVariable($EnvName)
    if ($envVal -and (Test-Path $envVal)) { return $envVal }
    if ($Current -and (Test-Path $Current)) { return $Current }
    $cmd = Get-Command $BinName -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Path }
    return $Current
}
$exeExt = if ($IsWindows -or $env:OS -eq 'Windows_NT') { '.exe' } else { '' }
$SolverBin     = Resolve-ToolDir -Current $SolverBin     -EnvName 'SOLVER_BIN'      -Probe ('z3'      + $exeExt)
$SawExe        = Resolve-ToolExe -Current $SawExe        -EnvName 'SAW_EXE'         -BinName 'saw'
$SawSpecGen    = Resolve-ToolExe -Current $SawSpecGen    -EnvName 'SAW_SPEC_GEN'    -BinName 'saw-spec-gen'
# rustup's matching-version llvm-as/opt live under
#   <sysroot>/lib/rustlib/<target-triple>/bin/
# after `rustup component add llvm-tools-preview`.  Discover via
# `rustc --print sysroot` so the script works on any active toolchain.
if (-not $RustupLlvmBin) {
    $RustupLlvmBin = [Environment]::GetEnvironmentVariable('RUSTUP_LLVM_BIN')
}
if (-not $RustupLlvmBin -or -not (Test-Path (Join-Path $RustupLlvmBin ('llvm-as' + $exeExt)))) {
    $rustc = Get-Command rustc -ErrorAction SilentlyContinue
    if ($rustc) {
        $sysroot = (& $rustc.Path --print sysroot).Trim()
        $rustlibBin = Get-ChildItem (Join-Path $sysroot 'lib/rustlib') -Directory -ErrorAction SilentlyContinue `
            | ForEach-Object { Join-Path $_.FullName 'bin' } `
            | Where-Object { Test-Path (Join-Path $_ ('llvm-as' + $exeExt)) } `
            | Select-Object -First 1
        if ($rustlibBin) { $RustupLlvmBin = $rustlibBin }
    }
}
foreach ($t in @(
    @{ Name='saw';          Path=$SawExe }
    @{ Name='saw-spec-gen'; Path=$SawSpecGen }
    @{ Name='z3 (solver)';  Path=(Join-Path $SolverBin ('z3' + $exeExt)) }
    @{ Name='rustup llvm-as'; Path=(Join-Path $RustupLlvmBin ('llvm-as' + $exeExt)) }
    @{ Name='rustup opt';     Path=(Join-Path $RustupLlvmBin ('opt'     + $exeExt)) }
)) {
    if (-not $t.Path -or -not (Test-Path $t.Path)) {
        throw ("Required tool '{0}' not found at '{1}'. Set the corresponding env var (SAW_EXE / SAW_SPEC_GEN / SOLVER_BIN / RUSTUP_LLVM_BIN), pass the matching -ParameterValue, or run scripts/ci-install.ps1. For rustup tools: rustup component add llvm-tools-preview" -f $t.Name, $t.Path)
    }
}

try {
    # ------------------------------------------------------------------
    # 1. Build crate as LLVM bitcode.
    # ------------------------------------------------------------------
    if (-not $SkipBuild) {
        Write-Host '─── cargo build --release --no-default-features (with --emit=llvm-bc)' -ForegroundColor Cyan
        Push-Location ..
        try {
            $env:RUSTFLAGS = '--emit=llvm-bc,llvm-ir -C debuginfo=0 -C codegen-units=1'
            & cargo build --release --lib --no-default-features 2>&1 | Out-Host
            if ($LASTEXITCODE) { throw "cargo build failed" }
        } finally { Pop-Location }
    }

    # ------------------------------------------------------------------
    # 2. Stage the most recent bitcode + IR.
    # ------------------------------------------------------------------
    $bc = Get-ChildItem ..\target\release\deps\sdep-*.bc |
            Sort-Object LastWriteTime -Descending |
            Select-Object -First 1
    $ll = Get-ChildItem ..\target\release\deps\sdep-*.ll |
            Sort-Object LastWriteTime -Descending |
            Select-Object -First 1
    if (-not $bc -or -not $ll) { throw "No sdep .bc/.ll found in target\release\deps" }

    Copy-Item $bc.FullName .\sdep.bc -Force
    Copy-Item $ll.FullName .\sdep.ll -Force
    Write-Host "  staged: $($bc.Name) ($($bc.Length) bytes)" -ForegroundColor DarkGray

    # ------------------------------------------------------------------
    # 2b. Patch LLVM IR: replace `poison` literals with `undef` (SAW
    #    1.5 Crucible panics on `Attempting to evaluate poison value`
    #    when symbolic execution touches an `insertvalue { i1, i1 }
    #    poison, ...` instruction).  Reassemble with rustup's LLVM 21
    #    `llvm-as` because the system clang (LLVM 20) doesn't recognise
    #    rustc's newer attributes like `dead_on_unwind`.
    # ------------------------------------------------------------------
    Write-Host '─── patching LLVM IR (poison → undef) + reassembling' -ForegroundColor Cyan
    # NOTE: saw-spec-gen recently dropped the per-pass CLI flags; the
    # poison→undef + strip-msvc-eh transforms are now always-on. See its
    # `patch-llvm-ir --help`.
    & $SawSpecGen patch-llvm-ir `
        --input  .\sdep.ll `
        --output .\sdep_patched.ll 2>&1 | Out-Host
    if ($LASTEXITCODE) { throw "patch-llvm-ir failed" }

    $llvmAs  = Join-Path $RustupLlvmBin ('llvm-as' + $exeExt)
    $llvmOpt = Join-Path $RustupLlvmBin ('opt'     + $exeExt)
    & $llvmAs .\sdep_patched.ll -o .\sdep_full.bc
    if ($LASTEXITCODE) { throw "llvm-as failed" }
    Write-Host '  bitcode reassembled' -ForegroundColor DarkGray

    # ------------------------------------------------------------------
    # 3. saw-spec-gen scaffolding (informational — the equivalence
    #    specs in verify_template.saw are hand-customized from these).
    # ------------------------------------------------------------------
    Write-Host '─── saw-spec-gen from-llvm-ir (scaffolding)' -ForegroundColor Cyan
    Remove-Item .\specs_scaffold -Recurse -Force -ErrorAction SilentlyContinue
    & $SawSpecGen from-llvm-ir `
        --input .\sdep.ll `
        --output .\specs_scaffold `
        --filter '_ZN4sdep' 2>&1 | Out-Host
    if ($LASTEXITCODE) { throw "saw-spec-gen failed" }

    # ------------------------------------------------------------------
    # 4. Locate mangled symbol names (hashes are rebuild-dependent).
    # ------------------------------------------------------------------
    function Find-Symbol {
        param([string] $stem)
        $m = Select-String -Path .\sdep.ll `
            -Pattern "^define[^@]*@($stem\w+E)" |
            ForEach-Object { $_.Matches[0].Groups[1].Value } |
            Select-Object -First 1
        if (-not $m) { throw "Symbol matching $stem not found in sdep.ll" }
        return $m
    }

    $symbols = @{
        '@PROVISION_KEY@'  = Find-Symbol '_ZN4sdep13provision_key17h'
        '@ENROLL_DEVICE@'  = Find-Symbol '_ZN4sdep13enroll_device17h'
        '@AUTHENTICATE@'   = Find-Symbol '_ZN4sdep12authenticate17h'
        '@ENFORCE_ACCESS@' = Find-Symbol '_ZN4sdep14enforce_access17h'
        '@GET_STATUS@'     = Find-Symbol '_ZN4sdep10get_status17h'
        '@IS_VALID_DATE@'  = Find-Symbol '_ZN4sdep26is_valid_request_date_secs17h'
    }
    Write-Host '─── resolved mangled symbols:' -ForegroundColor Cyan
    $symbols.GetEnumerator() | Sort-Object Key | ForEach-Object {
        Write-Host ('    {0,-18} → {1}' -f $_.Key, $_.Value) -ForegroundColor DarkGray
    }

    # ------------------------------------------------------------------
    # 4b. Strip bitcode to only the 5 target functions + transitive
    #     callees.  Two reasons:
    #       (a) Rust emits Win64 SEH cleanup pads on funclets for
    #           anything that touches String/Vec/Format machinery
    #           (e.g. core::iter Map::next inside chrono / serde
    #           drops).  SAW 1.5's llvm-pretty-bc-parser doesn't
    #           handle FUNC_CODE_OPERAND_BUNDLE on those calls and
    #           aborts with "not implemented … FUNC_CODE_OPERAND_BUNDLE".
    #       (b) Smaller bitcode = faster SAW load + cleaner failure
    #           messages.
    #     `internalize` marks everything except our 5 targets as
    #     internal linkage; `globaldce` then deletes anything not
    #     reachable from them.  The pure decision functions don't
    #     transitively pull in chrono/serde, so the SEH funclets go
    #     away.
    # ------------------------------------------------------------------
    Write-Host '─── opt --passes=internalize,globaldce (strip unrelated funcs)' -ForegroundColor Cyan
    $keep = ($symbols.Values | Sort-Object -Unique) -join ','
    & $llvmOpt --passes=internalize,globaldce `
        --internalize-public-api-list=$keep `
        .\sdep_full.bc -o .\sdep.bc 2>&1 | Out-Host
    if ($LASTEXITCODE) { throw "opt internalize/globaldce failed" }
    $stripped = (Get-Item .\sdep.bc).Length
    Write-Host ("  stripped bitcode: {0} bytes" -f $stripped) -ForegroundColor DarkGray

    # ------------------------------------------------------------------
    # 5. Render verify.saw from the template.
    # ------------------------------------------------------------------
    $template = Get-Content -Raw .\verify_template.saw
    foreach ($k in $symbols.Keys) {
        $template = $template.Replace($k, $symbols[$k])
    }
    if ($Only) {
        # Drop verification blocks that aren't in $Only.  We use the
        # `print "─── name ─────...` line as a section anchor.
        $allTargets = @('provision_key','enroll_device','authenticate','enforce_access','get_status','is_valid_request_date_secs')
        foreach ($t in $allTargets) {
            if ($Only -notcontains $t) {
                $pattern = "(?s)print `"─── $t ─[^`"]*`";.*?(?=(print `"─── |print `"═))"
                $template = [regex]::Replace($template, $pattern, '')
            }
        }
    }
    Set-Content -Path .\verify.saw -Value $template -NoNewline -Encoding ASCII
    Write-Host '─── verify.saw rendered' -ForegroundColor Cyan

    # ------------------------------------------------------------------
    # 6. Run SAW.
    # ------------------------------------------------------------------
    $env:PATH = $SolverBin + [System.IO.Path]::PathSeparator + $env:PATH
    Write-Host '─── running SAW' -ForegroundColor Cyan
    $log = & $SawExe .\verify.saw 2>&1 | Out-String
    $log | Set-Content saw_run.log
    Write-Host $log

    $verdict = if     ($log -match 'ALL RUST.*EQUIVALENCE PROOFS PASSED') { 'VERIFIED' }
               elseif ($log -match 'Counterexample')                      { 'COUNTEREXAMPLE' }
               elseif ($log -match 'error|Error')                         { 'ERROR' }
               else                                                       { 'UNKNOWN' }
    Write-Host ""
    Write-Host "════════════════════════════════════════════════════════" -ForegroundColor Cyan
    Write-Host "  RUST↔CRYPTOL VERIFICATION : $verdict" -ForegroundColor Cyan
    Write-Host "════════════════════════════════════════════════════════" -ForegroundColor Cyan
    if ($verdict -ne 'VERIFIED') { exit 1 }
}
finally {
    Pop-Location
}
