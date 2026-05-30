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
    [string]   $SawExe    = 'C:\Users\ameliapayne\saw-script\dist-newstyle\build\x86_64-windows\ghc-9.6.7\saw-1.5.0.99\x\saw\build\saw\saw.exe',
    [string]   $SawSpecGen = 'C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe',
    [string]   $SolverBin = 'C:\Users\ameliapayne\saw-1.5-windows-2022-X64-with-solvers\bin'
)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $here

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
    & $SawSpecGen patch-llvm-ir `
        --input  .\sdep.ll `
        --output .\sdep_patched.ll `
        --poison-to-undef 2>&1 | Out-Host
    if ($LASTEXITCODE) { throw "patch-llvm-ir failed" }

    $rustupBin = 'C:\Users\ameliapayne\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\x86_64-pc-windows-msvc\bin'
    $llvmAs = Join-Path $rustupBin 'llvm-as.exe'
    $llvmOpt = Join-Path $rustupBin 'opt.exe'
    if (-not (Test-Path $llvmAs) -or -not (Test-Path $llvmOpt)) {
        throw "rustup llvm-tools missing — run: rustup component add llvm-tools-preview"
    }
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
    $env:PATH = "$SolverBin;$env:PATH"
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
