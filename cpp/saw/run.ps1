# SDEP — SAW verification driver.
#
# Proves each pure decision function in cpp/include/sdep/*.hpp is
# behaviorally equivalent to its byte-width Cryptol model in
# SDEP_cpp.cry — which is in turn structurally identical to the
# bit-width spec in cryptol/SDEP.cry.
#
# Pipeline per function:
#   1. (Once) compile verify_targets.cpp at -O0 / -fno-inline.  The
#      header-only `inline constexpr` decision functions are emitted
#      as `linkonce_odr` bodies because verify_targets.cpp takes their
#      address through `[[gnu::used]] volatile` globals.  The real
#      mangled C++ symbol is what SAW dispatches on — no shims, no
#      `extern "C"` wrappers.
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
    [string]   $ClangBin  = 'C:\Program Files\LLVM\bin',
    [string]   $SawExe    = 'C:\Users\ameliapayne\saw-script\dist-newstyle\build\x86_64-windows\ghc-9.6.7\saw-1.5.0.99\x\saw\build\saw\saw.exe',
    [string]   $SawSpecGen = 'C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe',
    [string]   $SolverBin = 'C:\Users\ameliapayne\saw-1.5-windows-2022-X64-with-solvers\bin'
)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $here

# Targets: (cppName, cryptolName)
$targets = @(
    @{ Cpp = 'authenticate';        Cry = 'authenticate_cpp'        }
    @{ Cpp = 'isValidRequestDate';  Cry = 'isValidRequestDate_cpp'  }
    @{ Cpp = 'provisionKey';        Cry = 'provisionKey_cpp'        }
    @{ Cpp = 'enrollDevice';        Cry = 'enrollDevice_cpp'        }
    @{ Cpp = 'enforceAccess';       Cry = 'enforceAccess_cpp'       }
    @{ Cpp = 'getStatus';           Cry = 'getStatus_cpp'           }
    @{ Cpp = 'canonicalize_lp';     Cry = 'canonicalize_lp_post'    }
)
if ($Only) {
    $targets = $targets | Where-Object { $Only -contains $_.Cpp }
    if (-not $targets) { throw "No matching targets in $($Only -join ',')" }
}

$clang   = Join-Path $ClangBin 'clang.exe'
$bc      = Join-Path $here 'verify_targets.bc'
$ll      = Join-Path $here 'verify_targets.ll'
$bcOpt   = Join-Path $here 'verify_targets_o1.bc'   # -O1 build, inlines STL
$llOpt   = Join-Path $here 'verify_targets_o1.ll'
$ast     = Join-Path $here 'verify_targets_ast.json'
$srcAbs  = (Resolve-Path '.\verify_targets.cpp').Path
$incAbs  = (Resolve-Path '..\include').Path

if (-not $SkipBuild) {
    Write-Host '─── compile verify_targets.cpp → bitcode + IR (-O0)' -ForegroundColor Cyan
    & $clang -c -emit-llvm -O0 -fno-inline -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 -I $incAbs $srcAbs -o $bc
    if ($LASTEXITCODE) { throw "clang bc failed" }
    & $clang -S -emit-llvm -O0 -fno-inline -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 -I $incAbs $srcAbs -o $ll
    if ($LASTEXITCODE) { throw "clang ll failed" }

    Write-Host '─── compile verify_targets.cpp → bitcode + IR (-O1, STL-inlined)' -ForegroundColor Cyan
    # -O1 build is needed for functions that return aggregates through
    # std::optional / std::variant / other STL types whose constructors
    # are messy at -O0.  At -O1 the constructor bodies fold into plain
    # byte stores, which SAW can simulate directly.  The header-only
    # `inline constexpr` decision functions still survive as
    # `linkonce_odr` because verify_targets.cpp takes their addresses
    # via `[[gnu::used]] volatile` globals.
    & $clang -c -emit-llvm -O1 -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 -I $incAbs $srcAbs -o $bcOpt
    if ($LASTEXITCODE) { throw "clang -O1 bc failed" }
    & $clang -S -emit-llvm -O1 -fno-rtti -fexceptions `
        -target x86_64-pc-windows-msvc -std=c++20 -I $incAbs $srcAbs -o $llOpt
    if ($LASTEXITCODE) { throw "clang -O1 ll failed" }

    Write-Host '─── dump + filter clang AST' -ForegroundColor Cyan
    cmd /c "`"$clang`" -Xclang -ast-dump=json -fsyntax-only -fno-rtti -fexceptions -target x86_64-pc-windows-msvc -std=c++20 -I`"$incAbs`" `"$srcAbs`" > `"$ast`" 2>NUL"
    if ($LASTEXITCODE) { throw "clang ast-dump failed" }
    & $SawSpecGen filter-ast --input $ast --output $ast --keep $here\..
    if ($LASTEXITCODE) { throw "filter-ast failed" }
}

# Where SAW lives + solvers.
$env:PATH = "$SolverBin;$env:PATH"

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

    # If a hand-written custom spec exists, use it verbatim and skip
    # gen-verify entirely.  This is for functions whose semantics
    # involve patterns auto-gen can't model — e.g. `getStatus` whose
    # `std::optional<Uuid>` payload is intentionally uninitialised
    # when empty.
    $customFile = Join-Path $here "custom\$cppName.saw"
    if (Test-Path $customFile) {
        Copy-Item $customFile (Join-Path $outDir 'verify.saw') -Force
        Write-Host "  using custom spec $customFile" -ForegroundColor DarkGray
    } else {
    & $SawSpecGen gen-verify `
        --ast $ast `
        --bitcode (Join-Path $outDir 'verify_targets.bc') `
        --llvm-ir (Join-Path $outDir 'verify_targets.ll') `
        --cryptol-spec (Join-Path $outDir 'SDEP_cpp.cry') `
        --function $cppName `
        --cryptol-fn $cryName `
        --output $outDir
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
    $stripped = $verifyText `
        -replace '(?m)^\s*m_main\s+<-\s+llvm_load_module\s+"verify_targets\.bc";.*$', 'm <- llvm_load_module "verify_targets.bc";' `
        -replace '(?m)^\s*m_stubs\s+<-\s+llvm_load_module\s+"vtable_stubs\.bc";.*\r?\n', '' `
        -replace '(?m)^\s*m\s+<-\s+llvm_combine_modules\s+m_main.*\r?\n', '' `
        -replace '(?m)^\s*include\s+"interface_overrides\.saw";.*\r?\n', '' `
        -replace '\[\s*ov_[A-Za-z0-9_,\s]+\]', '[]'
    if ($stripped -ne $verifyText) {
        Set-Content -Path $verifyPath -Value $stripped -NoNewline
        Write-Host "  stripped unused vtable / interface plumbing" -ForegroundColor DarkGray
    }
    }  # end else (no custom override)

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
        $log = & $SawExe .\verify.saw 2>&1 | Out-String
        $log | Set-Content saw_run.log
        Write-Host $log
        $verdict = if ($log -match 'Proof succeeded')      { 'VERIFIED' }
                   elseif ($log -match 'Counterexample')   { 'COUNTEREXAMPLE' }
                   elseif ($log -match 'error|Error')      { 'ERROR' }
                   else                                    { 'UNKNOWN' }
        $results += [PSCustomObject]@{ Fn=$cppName; Verdict=$verdict }
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
