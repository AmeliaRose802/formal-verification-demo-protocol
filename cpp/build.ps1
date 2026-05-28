# Build SDEP with clang++ directly (no CMake required).
#
# Usage:
#   pwsh ./build.ps1            # build + run tests
#   pwsh ./build.ps1 -NoRun     # build only
[CmdletBinding()]
param(
    [string] $ClangPath = 'C:\Program Files\LLVM\bin\clang++.exe',
    [string] $BuildDir  = 'build',
    [switch] $NoRun
)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $here
try {
    if (-not (Test-Path -LiteralPath $ClangPath)) {
        throw "clang++ not found at $ClangPath"
    }
    New-Item -ItemType Directory -Force -Path $BuildDir | Out-Null

    $sources = @(
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
