#requires -Version 7.0
<#
  run_keystore.ps1 — implementation-level SAW proofs for the stateful
  KeyStore methods (activate / provision / hasKey / isActive).

  Unlike run.ps1 (which proves the pure decision functions via
  saw-spec-gen), the KeyStore methods are STATEFUL: they mutate / read
  the object held under a std::mutex and return aggregates through an
  sret optional<EnrollmentKey>. Those are verified with a hand-written
  compositional harness (keystore_specs.saw) that loads the REAL
  production bitcode of cpp/src/key_store.cpp and proves each mangled
  symbol against the Cryptol models in SDEP_cpp.cry. This is NOT a
  bridge: no logic is re-implemented in C; the actual compiled method
  body is symbolically executed, with only system primitives
  (_Mtx_lock / _Mtx_unlock / memcmp) supplied as faithful overrides.

  Key compile detail: key_store.cpp is built with -fno-exceptions
  -fno-rtti. The MSVC C++ EH lowering emits Win64 funclet token types
  (cleanuppad / catchpad / TYPE_CODE_TOKEN) that SAW 1.5's bitcode
  parser cannot ingest; disabling exceptions removes them entirely
  while leaving the decision logic identical.
#>
param(
    [switch]   $SkipBuild,
    [string]   $ClangBin   = '',
    [string]   $SawExe     = '',
    [string]   $SolverBin  = ''
)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $here
try {
    # This harness is MSVC-ABI specific: keystore_specs.saw pins
    # MSVC-mangled symbol names, the MSVC CRT mutex primitives
    # (_Mtx_lock / _Mtx_unlock), and the 80-byte MSVC std::mutex object
    # layout. A native Linux / libstdc++ build matches none of those, so
    # the proofs only run on Windows. Skip cleanly elsewhere (the pure
    # decision functions and all Cryptol properties still verify on Linux).
    if (-not ($IsWindows -or $env:OS -eq 'Windows_NT')) {
        Write-Host 'KeyStore proofs SKIPPED (non-Windows host: keystore_specs.saw is MSVC-ABI specific)' -ForegroundColor Yellow
        exit 0
    }

    function Resolve-ToolDir {
        param([string] $Current, [string] $EnvName, [string] $Probe)
        $envVal = [Environment]::GetEnvironmentVariable($EnvName)
        if ($envVal -and (Test-Path (Join-Path $envVal $Probe))) { return $envVal }
        if ($Current -and (Test-Path (Join-Path $Current $Probe))) { return $Current }
        $cmd = Get-Command ([System.IO.Path]::GetFileNameWithoutExtension($Probe)) -ErrorAction SilentlyContinue
        if ($cmd) { return Split-Path -Parent $cmd.Path }
        return $Current
    }
    function Resolve-ToolExe {
        param([string] $Current, [string] $EnvName, [string] $BinName)
        $envVal = [Environment]::GetEnvironmentVariable($EnvName)
        if ($envVal -and (Test-Path $envVal)) { return $envVal }
        if ($Current -and (Test-Path $Current)) { return $Current }
        $cmd = Get-Command $BinName -ErrorAction SilentlyContinue
        if ($cmd) { return $cmd.Path }
        return $Current
    }

    $exeExt    = if ($IsWindows -or $env:OS -eq 'Windows_NT') { '.exe' } else { '' }
    $ClangBin  = Resolve-ToolDir -Current $ClangBin  -EnvName 'CLANG_BIN'  -Probe ('clang' + $exeExt)
    $SolverBin = Resolve-ToolDir -Current $SolverBin -EnvName 'SOLVER_BIN' -Probe ('z3'    + $exeExt)
    $SawExe    = Resolve-ToolExe -Current $SawExe    -EnvName 'SAW_EXE'     -BinName 'saw'

    foreach ($t in @(
        @{ Name='clang';       Path=(Join-Path $ClangBin ('clang' + $exeExt)) }
        @{ Name='saw';         Path=$SawExe }
        @{ Name='z3 (solver)'; Path=(Join-Path $SolverBin ('z3' + $exeExt)) }
    )) {
        if (-not (Test-Path $t.Path)) {
            throw ("Required tool '{0}' not found at {1}. Set CLANG_BIN / SAW_EXE / SOLVER_BIN or pass -ClangBin/-SawExe/-SolverBin." -f $t.Name, $t.Path)
        }
    }

    $clang  = Join-Path $ClangBin ('clang' + $exeExt)
    $bc     = Join-Path $here 'key_store.bc'
    $ll     = Join-Path $here 'key_store.ll'
    $srcAbs = (Resolve-Path '..\src\key_store.cpp').Path
    $incAbs = (Resolve-Path '..\include').Path
    $spec   = Join-Path $here 'keystore_specs.saw'

    # libc++ headers for non-Windows hosts (mirrors run.ps1).
    $linuxClangExtras = @()
    if (-not ($IsWindows -or $env:OS -eq 'Windows_NT')) {
        $incRoot   = Join-Path $ClangBin '..' | Join-Path -ChildPath 'include'
        $libcxxInc = Join-Path $incRoot 'c++' | Join-Path -ChildPath 'v1'
        $resolved  = Resolve-Path $libcxxInc -ErrorAction SilentlyContinue
        if ($resolved) {
            $linuxClangExtras = @('-stdlib=libc++', '-isystem', $resolved.Path)
            # <__config_site> lives in include/<triple>/c++/v1 in the official
            # LLVM Linux tarball, not in include/c++/v1; <__config> includes it
            # unconditionally. Add its dir dynamically (mirrors run.ps1).
            $incRootResolved = Resolve-Path $incRoot -ErrorAction SilentlyContinue
            $csDir = $null
            if ($incRootResolved) {
                $configSites = @(Get-ChildItem -Path $incRootResolved.Path -Filter '__config_site' -Recurse -File -ErrorAction SilentlyContinue)
                if ($configSites.Count -gt 0) { $csDir = $configSites[0].Directory.FullName }
            }
            if ($csDir) {
                $linuxClangExtras += @('-isystem', $csDir)
                Write-Host ("  (linux) added libc++ headers: {0} (+ __config_site: {1})" -f $resolved.Path, $csDir) -ForegroundColor DarkGray
            } else {
                Write-Host ("  (linux) added libc++ headers: {0}" -f $resolved.Path) -ForegroundColor DarkGray
                Write-Warning "  (linux) __config_site not found under $incRoot — clang may abort on <__config>."
            }
        } else {
            Write-Warning ("libc++ headers not found at {0}." -f $libcxxInc)
        }
    }

    if (-not $SkipBuild) {
        Write-Host '─── compile cpp/src/key_store.cpp → bitcode + IR (-O1 -fno-exceptions -fno-rtti)' -ForegroundColor Cyan
        & $clang -c -emit-llvm -O1 -fno-rtti -fno-exceptions `
            -target x86_64-pc-windows-msvc -std=c++20 @linuxClangExtras -I $incAbs $srcAbs -o $bc
        if ($LASTEXITCODE) { throw 'clang -O1 bc (key_store) failed' }
        & $clang -S -emit-llvm -O1 -fno-rtti -fno-exceptions `
            -target x86_64-pc-windows-msvc -std=c++20 @linuxClangExtras -I $incAbs $srcAbs -o $ll
        if ($LASTEXITCODE) { throw 'clang -O1 ll (key_store) failed' }
    }

    # SAW needs cryptol.exe (next to saw) on PATH, z3 on PATH, and the
    # Cryptol search path pointed at this dir so `import "SDEP_cpp.cry"`
    # resolves.
    $sawDir = Split-Path -Parent $SawExe
    $env:PATH        = "$SolverBin;$sawDir;$($env:PATH)"
    $env:CRYPTOL_PATH = $here

    Write-Host '─── SAW: KeyStore stateful proofs' -ForegroundColor Cyan
    $sawOut = & $SawExe $spec 2>&1 | Out-String
    Write-Host $sawOut

    # Each proof prints "Proof succeeded! <symbol>"; we expect 5 (activate,
    # provision×2, hasKey, isActive) plus the trailing banner.
    $succeeded = ([regex]::Matches($sawOut, 'Proof succeeded!')).Count
    $allOk     = ($LASTEXITCODE -eq 0) -and ($sawOut -match 'ALL KEYSTORE PROOFS SUCCEEDED') -and ($succeeded -ge 5)

    $results = @(
        @{ method='KeyStore::activate';            cryptol_fn='keyStoreActivateRet/Post' }
        @{ method='KeyStore::provision (fresh)';   cryptol_fn='keyStoreProvisionRet/Post' }
        @{ method='KeyStore::provision (TOFU)';    cryptol_fn='keyStoreProvisionPost (frame)' }
        @{ method='KeyStore::hasKey';              cryptol_fn='ksHasKey' }
        @{ method='KeyStore::isActive';            cryptol_fn='ksIsActive' }
    ) | ForEach-Object {
        [ordered]@{
            schema_version = 1
            side           = 'cpp'
            method         = $_.method
            cryptol_fn     = $_.cryptol_fn
            verdict        = if ($allOk) { 'VERIFIED' } else { 'FAILED' }
        }
    }
    $outJson = Join-Path $here 'keystore_result.json'
    ($results | ConvertTo-Json -Depth 5) | Set-Content -Path $outJson -Encoding utf8
    Write-Host ("─── wrote {0}" -f $outJson) -ForegroundColor DarkGray

    if (-not $allOk) {
        Write-Host 'KeyStore proofs FAILED' -ForegroundColor Red
        exit 1
    }
    Write-Host ("KeyStore proofs VERIFIED ({0}/5 methods, provision split into 2 cases)" -f 5) -ForegroundColor Green
    exit 0
}
finally {
    Pop-Location
}
