# Build SDEP with clang++ directly (no CMake required).
#
# Usage:
#   pwsh ./build.ps1            # build + run tests
#   pwsh ./build.ps1 -NoRun     # build only
[CmdletBinding()]
param(
    # Empty default — discovered from $env:CLANG_BIN or PATH below.
    [string] $ClangPath = '',
    [string] $BuildDir  = 'build',
    [switch] $NoRun
)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $here
try {
    # Resolve clang++: explicit -ClangPath > $env:CLANG_BIN (a dir) > PATH.
    $exeExt = if ($IsWindows -or $env:OS -eq 'Windows_NT') { '.exe' } else { '' }
    if (-not $ClangPath) {
        $envBin = [Environment]::GetEnvironmentVariable('CLANG_BIN')
        if ($envBin -and (Test-Path (Join-Path $envBin ('clang++' + $exeExt)))) {
            $ClangPath = Join-Path $envBin ('clang++' + $exeExt)
        } else {
            $cmd = Get-Command ('clang++' + $exeExt) -ErrorAction SilentlyContinue
            if ($cmd) { $ClangPath = $cmd.Path }
        }
    }
    if (-not $ClangPath -or -not (Test-Path -LiteralPath $ClangPath)) {
        throw "clang++ not found. Set `$env:CLANG_BIN to a dir containing clang++, pass -ClangPath, or add clang++ to PATH."
    }
    New-Item -ItemType Directory -Force -Path $BuildDir | Out-Null

    $sources = @(
        'src/decision.cpp',     # Pure decision logic verified by SAW.
        'src/hmac.cpp',
        'src/canonical.cpp',
        'src/auth.cpp',
        'src/uuid.cpp',
        'src/key_store.cpp',
        'src/controller.cpp',
        'tests/test_properties.cpp'
    )

    $cflags = @(
        '-std=c++20',
        '-O2',
        '-Wall', '-Wextra', '-Wpedantic',
        '-Wshadow', '-Wnon-virtual-dtor', '-Wold-style-cast',
        '-Iinclude',
        '-fexceptions'
    )

    $out = Join-Path $BuildDir 'sdep_test.exe'
    Write-Host "Compiling sdep_test..." -ForegroundColor Cyan
    & $ClangPath @cflags @sources -o $out
    if ($LASTEXITCODE -ne 0) { throw "compile failed (exit $LASTEXITCODE)" }
    Write-Host "Built: $out" -ForegroundColor Green

    if (-not $NoRun) {
        Write-Host "Running tests..." -ForegroundColor Cyan
        & $out
        if ($LASTEXITCODE -ne 0) { throw "tests failed (exit $LASTEXITCODE)" }
    }
}
finally {
    Pop-Location
}
