# SDEP — SAW verification driver.
#
# Proves each pure decision function in cpp/src/decision.cpp is
# behaviorally equivalent to its byte-width Cryptol model in
# SDEP_cpp.cry — which is in turn structurally identical to the
# bit-width spec in cryptol/SDEP.cry.
#
# Pipeline per function:
#   1. (Once) compile the production source cpp/src/decision.cpp at
#      -O0 / -fno-inline so each decision function emits a standalone
#      LLVM symbol — the same source the production library builds
#      from, just at a verification-friendly optimisation level. No
#      verification-only TU, no ODR-emission hacks: SAW reasons about
#      the bytes the production binary executes (modulo opt level).
#   2. (Once) dump the clang AST and filter it to user-code only.
#   3. For each function: run `saw-spec-gen gen-verify` to produce a
#      verify.saw script, then run SAW.
#
# Usage:
#   pwsh ./run.ps1                     # build + verify all
#   pwsh ./run.ps1 -Only authenticate  # verify a single function

[CmdletBinding()]
param(
    [string[]] $Only,
    [switch]   $SkipBuild,
    # Tool paths.  Empty defaults — discovered from env vars
    # (CLANG_BIN, SAW_EXE, SAW_SPEC_GEN, SOLVER_BIN) or PATH below.
    [string]   $ClangBin   = '',
    [string]   $SawExe     = '',
    [string]   $SawSpecGen = '',
    [string]   $SolverBin  = ''
)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $here

# Tool discovery: explicit -ParameterValue, then env var, then PATH.
# Lets the same script work on a dev box (tools on PATH) and in CI
# (env vars set by scripts/ci-install.ps1) without per-environment
# plumbing.
function Resolve-ToolDir {
    param(
        [string] $Current,    # current $ClangBin / $SolverBin value
        [string] $EnvName,    # env var name to consult
        [string] $Probe       # filename that must exist under the dir
    )
    $envVal = [Environment]::GetEnvironmentVariable($EnvName)
    if ($envVal -and (Test-Path (Join-Path $envVal $Probe))) { return $envVal }
    if ($Current -and (Test-Path (Join-Path $Current $Probe))) { return $Current }
    $cmd = Get-Command ([System.IO.Path]::GetFileNameWithoutExtension($Probe)) -ErrorAction SilentlyContinue
    if ($cmd) { return Split-Path -Parent $cmd.Path }
    return $Current
}
function Resolve-ToolExe {
    param(
        [string] $Current,
        [string] $EnvName,
        [string] $BinName
    )
    $envVal = [Environment]::GetEnvironmentVariable($EnvName)
    if ($envVal -and (Test-Path $envVal)) { return $envVal }
    if ($Current -and (Test-Path $Current)) { return $Current }
    $cmd = Get-Command $BinName -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Path }
    return $Current
}
$exeExt = if ($IsWindows -or $env:OS -eq 'Windows_NT') { '.exe' } else { '' }
$ClangBin   = Resolve-ToolDir -Current $ClangBin   -EnvName 'CLANG_BIN'  -Probe ('clang' + $exeExt)
$SolverBin  = Resolve-ToolDir -Current $SolverBin  -EnvName 'SOLVER_BIN' -Probe ('z3'    + $exeExt)
$SawExe     = Resolve-ToolExe -Current $SawExe     -EnvName 'SAW_EXE'      -BinName 'saw'
$SawSpecGen = Resolve-ToolExe -Current $SawSpecGen -EnvName 'SAW_SPEC_GEN' -BinName 'saw-spec-gen'
foreach ($t in @(
    @{ Name='clang';        Path=(Join-Path $ClangBin ('clang' + $exeExt)) }
    @{ Name='saw';          Path=$SawExe }
    @{ Name='saw-spec-gen'; Path=$SawSpecGen }
    @{ Name='z3 (solver)';  Path=(Join-Path $SolverBin ('z3' + $exeExt)) }
)) {
    if (-not (Test-Path $t.Path)) {
        throw ("Required tool '{0}' not found at {1}. Set the corresponding env var (CLANG_BIN / SAW_EXE / SAW_SPEC_GEN / SOLVER_BIN) or pass -ClangBin/-SawExe/-SawSpecGen/-SolverBin." -f $t.Name, $t.Path)
    }
}

# Targets: (cppName, cryptolName, optional Bc).
#
# Bc selects which compiled artifact saw-spec-gen runs against.
#   'O0'  → verify_targets.bc   (-O0 -fno-inline, default; preserves
#                                 each decision function as a standalone
#                                 LLVM symbol with no STL inlining).
#   'O1'  → verify_targets_o1.bc (-O1, used when the target transitively
#                                 invokes STL aggregate constructors
#                                 (e.g. std::optional<Uuid>) that SAW
#                                 can't symbolically execute at -O0
#                                 because the constructor bodies do
#                                 typed reads through empty-struct
#                                 globals (`std::nullopt_t`,
#                                 `std::in_place_t`).  At -O1 those
#                                 constructors fold into the caller as
#                                 plain byte stores.)
#
# Cryptol fns canonicalize_lp_ret + canonicalize_lp_post model the two
# halves of an output-pointer + return-value function: -CryRet feeds
# `--cryptol-fn` (return value) and -CryPost feeds `--cryptol-fn-out`
# (post-state of the output buffer).  saw-spec-gen wires these together
# via `--out-buffer-param`/`--in-buffer-size`/`--max-len-precond`.
$targets = @(
    @{ Cpp = 'authenticate';        Cry = 'authenticate'            }
    @{ Cpp = 'isValidRequestDate';  Cry = 'isValidRequestDate'      }
    @{ Cpp = 'provisionKey';        Cry = 'provisionKey'            }
    @{ Cpp = 'enrollDevice';        Cry = 'enrollDevice'            }
    @{ Cpp = 'enforceAccess';       Cry = 'enforceAccess'           }
    @{ Cpp = 'getStatus';           Cry = 'getStatus'; Bc = 'O1'    }
    @{ Cpp = 'canonicalize_lp';     Cry = 'canonicalize_lp_ret';
       CryPost = 'canonicalize_lp_post';
       ExtraArgs = @(
           '--in-buffer-size',    'm=4',
           '--in-buffer-size',    'b=4',
           '--out-buffer-param',  'out=10',
           '--cryptol-fn-out',    'out=canonicalize_lp_post',
           '--max-len-precond',   'nm=4',
           '--max-len-precond',   'nb=4'
       ) }
)
if ($Only) {
    $targets = $targets | Where-Object { $Only -contains $_.Cpp }
    if (-not $targets) { throw "No matching targets in $($Only -join ',')" }
}

$clang   = Join-Path $ClangBin ('clang' + $exeExt)
$bc      = Join-Path $here 'verify_targets.bc'
$ll      = Join-Path $here 'verify_targets.ll'
$bcOpt   = Join-Path $here 'verify_targets_o1.bc'   # -O1 build, inlines STL
$llOpt   = Join-Path $here 'verify_targets_o1.ll'
$ast     = Join-Path $here 'verify_targets_ast.json'
$srcAbs  = (Resolve-Path '..\src\decision.cpp').Path
$incAbs  = (Resolve-Path '..\include').Path

# Extra clang args needed when running on a non-Windows host.
#
# We target x86_64-pc-windows-msvc so the LLVM IR matches what the
# production Windows build emits (MSVC name mangling + ABI) — that's
# what verify.saw's `llvm_verify` symbol strings expect. On Windows
# runners clang auto-discovers the installed MSVC stdlib for its
# system includes. On Linux there's no MSVC stdlib, so `<cstdint>`
# (pulled by cpp/include/sdep/types.hpp) fails to resolve.
#
# The standalone LLVM tarball we install on Linux
# (LLVM-${VERSION}-Linux-X64.tar.xz) ships libc++ headers in the
# per-target layout introduced in LLVM 17+:
#
#   include/c++/v1/                                  — generic headers
#                                                      (cstdint, optional, …)
#   include/<host-triple>/c++/v1/__config_site       — build-config header
#
# The generic `__config` does `#include <__config_site>`, so the
# per-target dir must be on the include search path BEFORE the
# generic one or clang fails with "'__config_site' file not found".
#
# We don't pass `-stdlib=libc++`: when targeting *-windows-msvc clang's
# driver ignores it (emits "argument unused during compilation") and
# refuses to add the libc++ paths automatically. So we feed both
# include dirs by hand with `-isystem` — that's what actually wires
# the headers in for IR generation.
$linuxClangExtras = @()
if (-not ($IsWindows -or $env:OS -eq 'Windows_NT')) {
    $llvmRoot = (Resolve-Path (Join-Path $ClangBin '..')).Path
    $libcxxGeneric = Join-Path $llvmRoot 'include/c++/v1'

    # Locate the per-target subdir holding __config_site. The triple
    # is normally x86_64-unknown-linux-gnu but we glob to stay robust
    # against tarball variants (e.g. x86_64-pc-linux-gnu).
    $perTargetConfig = Get-ChildItem -Path (Join-Path $llvmRoot 'include') `
        -Directory -ErrorAction SilentlyContinue |
        ForEach-Object { Join-Path $_.FullName 'c++/v1/__config_site' } |
        Where-Object { Test-Path $_ } |
        Select-Object -First 1
    $libcxxPerTarget = if ($perTargetConfig) { Split-Path -Parent $perTargetConfig } else { $null }

    if ($libcxxPerTarget) {
        $linuxClangExtras += @('-isystem', $libcxxPerTarget)
        Write-Host ("  (linux) added per-target libc++ headers: {0}" -f $libcxxPerTarget) -ForegroundColor DarkGray
    } else {
        Write-Warning ("Per-target libc++ headers (containing __config_site) not found under {0}/include/<triple>/c++/v1 — clang may fail with '__config_site file not found'." -f $llvmRoot)
    }
    if (Test-Path $libcxxGeneric) {
        $linuxClangExtras += @('-isystem', $libcxxGeneric)
        Write-Host ("  (linux) added generic libc++ headers:    {0}" -f $libcxxGeneric) -ForegroundColor DarkGray
    } else {
        Write-Warning ("libc++ headers not found at {0} — clang may fail to find <cstdint> when targeting x86_64-pc-windows-msvc on Linux." -f $libcxxGeneric)
    }
}

if (-not $SkipBuild) {
    Write-Host '─── compile cpp/src/decision.cpp → bitcode + IR (-O0)' -ForegroundColor Cyan
    & $clang -c -emit-llvm -O0 -fno-inline -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 @linuxClangExtras -I $incAbs $srcAbs -o $bc
    if ($LASTEXITCODE) { throw "clang bc failed" }
    & $clang -S -emit-llvm -O0 -fno-inline -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 @linuxClangExtras -I $incAbs $srcAbs -o $ll
    if ($LASTEXITCODE) { throw "clang ll failed" }

    Write-Host '─── compile cpp/src/decision.cpp → bitcode + IR (-O1, STL-inlined)' -ForegroundColor Cyan
    # -O1 build is needed for functions that return aggregates through
    # std::optional / std::variant / other STL types whose constructors
    # are messy at -O0.  At -O1 the constructor bodies fold into plain
    # byte stores, which SAW can simulate directly.
    & $clang -c -emit-llvm -O1 -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 @linuxClangExtras -I $incAbs $srcAbs -o $bcOpt
    if ($LASTEXITCODE) { throw "clang -O1 bc failed" }
    & $clang -S -emit-llvm -O1 -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 @linuxClangExtras -I $incAbs $srcAbs -o $llOpt
    if ($LASTEXITCODE) { throw "clang -O1 ll failed" }

    Write-Host '─── dump + filter clang AST' -ForegroundColor Cyan
    # Portable PS redirect (the old `cmd /c "... > $ast 2>NUL"` doesn't
    # exist on Linux). `*> $null` discards stderr, `> $ast` captures
    # JSON to disk. PS 7+ writes UTF-8 without BOM by default which is
    # what clang's `-ast-dump=json` expects.
    & $clang -Xclang -ast-dump=json -fsyntax-only -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 @linuxClangExtras -I $incAbs $srcAbs 2>$null > $ast
    if ($LASTEXITCODE) { throw "clang ast-dump failed" }
    # Use Join-Path so the path passed to saw-spec-gen is OS-native
    # (Linux PS would otherwise hand it the literal string `<here>\..`,
    # and Rust's std::fs treats `\` as a filename char on Linux).
    & $SawSpecGen filter-ast --input $ast --output $ast --keep (Join-Path $here '..')
    if ($LASTEXITCODE) { throw "filter-ast failed" }
}

# Where SAW lives + solvers.
$env:PATH = $SolverBin + [System.IO.Path]::PathSeparator + $env:PATH

$results = @()
foreach ($t in $targets) {
    $cppName = $t.Cpp
    $cryName = $t.Cry
    Write-Host ""
    Write-Host "════════════════════════════════════════════════════════" -ForegroundColor Magenta
    Write-Host "  $cppName   ≡   $cryName" -ForegroundColor Magenta
    Write-Host "════════════════════════════════════════════════════════" -ForegroundColor Magenta

    $outDir = Join-Path $here "out_$cppName"
    if (Test-Path $outDir) { Remove-Item -Recurse -Force $outDir }
    New-Item -ItemType Directory -Path $outDir | Out-Null
    Copy-Item $bc  (Join-Path $outDir 'verify_targets.bc') -Force
    Copy-Item $ll  (Join-Path $outDir 'verify_targets.ll') -Force
    if (Test-Path $bcOpt) {
        Copy-Item $bcOpt (Join-Path $outDir 'verify_targets_o1.bc') -Force
        Copy-Item $llOpt (Join-Path $outDir 'verify_targets_o1.ll') -Force
    }
    Copy-Item .\SDEP_cpp.cry (Join-Path $outDir 'SDEP_cpp.cry') -Force
    Copy-Item ..\..\cryptol\SDEP.cry (Join-Path $outDir 'SDEP.cry') -Force

    # Per-target bitcode choice (default -O0, override to -O1 for
    # targets that pull in STL aggregate constructors SAW can't
    # symbolically execute at -O0 — currently only `getStatus`).
    $bcKind  = if ($t.Bc) { $t.Bc } else { 'O0' }
    $bcName  = if ($bcKind -eq 'O1') { 'verify_targets_o1.bc' } else { 'verify_targets.bc' }
    $llName  = if ($bcKind -eq 'O1') { 'verify_targets_o1.ll' } else { 'verify_targets.ll' }
    $bcPath  = Join-Path $outDir $bcName
    $llPath  = Join-Path $outDir $llName

    $genArgs = @(
        'gen-verify',
        '--ast',          $ast,
        '--bitcode',      $bcPath,
        '--llvm-ir',      $llPath,
        '--cryptol-spec', (Join-Path $outDir 'SDEP_cpp.cry'),
        '--function',     $cppName,
        '--cryptol-fn',   $cryName,
        '--output',       $outDir
    )
    if ($t.ExtraArgs) { $genArgs += $t.ExtraArgs }
    & $SawSpecGen @genArgs
    if ($LASTEXITCODE) {
        Write-Host "  gen-verify failed" -ForegroundColor Red
        $results += [PSCustomObject]@{ Fn=$cppName; Verdict='gen-verify-failed' }
        continue
    }

    # If a per-function precondition file exists, splice it into the
    # generated verify.saw right before `llvm_execute_func`.  This is
    # how we express real-world domain constraints (e.g. non-negative
    # Unix-epoch timestamps for isValidRequestDate) that the C++
    # signed-arithmetic implementation relies on but that the
    # bit-vector Cryptol model can't carry.
    $precondFile = Join-Path $here "preconditions\$cppName.saw"
    if (Test-Path $precondFile) {
        $verifyPath = Join-Path $outDir 'verify.saw'
        $verifyText = Get-Content -Raw $verifyPath
        $precondText = Get-Content -Raw $precondFile
        $marker = '    llvm_execute_func'
        if ($verifyText -notmatch [regex]::Escape($marker)) {
            throw "Precondition injection: marker '$marker' not found in $verifyPath"
        }
        $verifyText = $verifyText -replace [regex]::Escape($marker),
            ($precondText.TrimEnd() + "`n`n" + $marker)
        Set-Content -Path $verifyPath -Value $verifyText -NoNewline
        Write-Host "  injected precondition from $precondFile" -ForegroundColor DarkGray
    }

    # saw-spec-gen scans the entire bitcode for polymorphic STL types
    # (std::exception, std::pmr::memory_resource) and emits vtable
    # stubs + interface-override includes for them.  At `-O0
    # -fno-inline` those STL classes are kept alive in the bitcode
    # even though our target decision functions never call through
    # any of their virtual methods.  Strip the interface plumbing
    # when the target function doesn't reference vtable dispatch
    # (all six SDEP decision functions are pure value-in / value-out).
    $verifyPath = Join-Path $outDir 'verify.saw'
    $verifyText = Get-Content -Raw $verifyPath
    $bcEsc      = [regex]::Escape($bcName)
    $stripped = $verifyText `
        -replace ('(?m)^\s*m_main\s+<-\s+llvm_load_module\s+"' + $bcEsc + '";.*$'), ('m <- llvm_load_module "' + $bcName + '";') `
        -replace '(?m)^\s*m_stubs\s+<-\s+llvm_load_module\s+"vtable_stubs\.bc";.*\r?\n', '' `
        -replace '(?m)^\s*m\s+<-\s+llvm_combine_modules\s+m_main.*\r?\n', '' `
        -replace '(?m)^\s*include\s+"interface_overrides\.saw";.*\r?\n', '' `
        -replace '\[\s*ov_[A-Za-z0-9_,\s]+\]', '[]'
    if ($stripped -ne $verifyText) {
        Set-Content -Path $verifyPath -Value $stripped -NoNewline
        Write-Host "  stripped unused vtable / interface plumbing" -ForegroundColor DarkGray
    }

    # saw-spec-gen may emit a vtable_stubs.ll for STL polymorphic types
    # it sees in the bitcode (e.g. std::memory_resource, std::exception).
    # SAW's llvm_load_module requires bitcode, not textual IR — assemble
    # it on the fly using clang.  We don't need llvm-as on PATH for this.
    $stubsLl = Join-Path $outDir 'vtable_stubs.ll'
    $stubsBc = Join-Path $outDir 'vtable_stubs.bc'
    if ((Test-Path $stubsLl) -and (-not (Test-Path $stubsBc))) {
        & $clang -c -emit-llvm -target x86_64-pc-windows-msvc $stubsLl -o $stubsBc 2>&1 | Out-Null
        if (-not (Test-Path $stubsBc)) {
            Write-Host "  WARNING: failed to assemble vtable_stubs.bc" -ForegroundColor Yellow
        }
    }

    Push-Location $outDir
    try {
        $log = & $SawExe ./verify.saw 2>&1 | Out-String
        $log | Set-Content saw_run.log
        Write-Host $log
        $verdict = if ($log -match 'Proof succeeded')      { 'VERIFIED' }
                   elseif ($log -match 'Counterexample')   { 'COUNTEREXAMPLE' }
                   elseif ($log -match 'error|Error')      { 'ERROR' }
                   else                                    { 'UNKNOWN' }
        $results += [PSCustomObject]@{ Fn=$cppName; Verdict=$verdict }

        # Emit result.json in the schema pretty-specs `--adapt-saw-results`
        # expects, so badges can be rendered into the docs without rerunning
        # SAW from inside the pretty-specs pipeline.  We index by the
        # *Cryptol* name (cryName, e.g. `authenticate`) so it lines up
        # with the function inventory pretty-specs extracts from SDEP_cpp.cry.
        $resultJson = [ordered]@{
            schema_version = '1'
            side           = 'cpp'
            function       = $cppName
            cryptol_fn     = $cryName
            verdict        = $verdict
            counterexample = @()
            expected       = $null
            actual         = $null
            solver         = 'z3'
            time_secs      = $null
            impl_file      = 'verify_targets.cpp'
        }
        if ($verdict -ne 'VERIFIED') {
            $reasonLines = ($log -split "`r?`n") | Where-Object {
                $_ -match 'Counterexample|error|Error|cannot|failed'
            } | Select-Object -First 3
            $resultJson.reason = ($reasonLines -join '; ').Trim()
        }
        $resultJson | ConvertTo-Json -Depth 6 | Set-Content 'result.json'
    } finally { Pop-Location }
}

Write-Host ""
Write-Host "════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  SUMMARY" -ForegroundColor Cyan
Write-Host "════════════════════════════════════════════════════════" -ForegroundColor Cyan
$results | Format-Table -AutoSize

Pop-Location
$failed = $results | Where-Object { $_.Verdict -ne 'VERIFIED' }
if ($failed) { exit 1 }
