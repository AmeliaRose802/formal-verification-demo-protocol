<#
.SYNOPSIS
    Cross-platform CI installer for the demo_protocol verification toolchain.

.DESCRIPTION
    Downloads and stages every tool verify_all.ps1 needs into
    $HOME/.demo_protocol/, then writes a small env file that exports
    the corresponding paths so the per-language `run.ps1` scripts can
    pick them up via environment variables.

    Tools installed:
      - LLVM ${LlvmVersion} (clang, llvm-as, opt, llvm-link)        → $HOME/.demo_protocol/llvm
      - SAW ${SawVersion} with bundled solvers (saw, cryptol, z3)   → $HOME/.demo_protocol/saw
      - saw-spec-gen (latest release; binary used by both run.ps1s)  → $HOME/.demo_protocol/bin

    Tools assumed to already be on PATH (installed by the workflow):
      - pwsh, rustc, cargo, rustup
      - rustup component `llvm-tools-preview` (provides Rust-side llvm-as / opt
        for the Rust pipeline; auto-installed by this script if missing).

    Idempotent: each step skips re-download when the install dir is
    already populated. Use `-Force` to wipe and reinstall.

.PARAMETER SawVersion
    SAW release tag to install (default: 1.5). Pulled from
    https://github.com/GaloisInc/saw-script/releases.

.PARAMETER LlvmVersion
    LLVM release tag to install (default: 20.1.6). Pulled from
    https://github.com/llvm/llvm-project/releases.

.PARAMETER SawSpecGenTag
    saw-spec-gen release tag to install (default: 'latest'). Pulled
    from https://github.com/AmeliaRose802/saw-spec-gen/releases.

.PARAMETER Force
    Re-download / re-extract even when the destination is already
    populated.

.PARAMETER WriteGithubPath
    When set, append every tool bin dir to $GITHUB_PATH so subsequent
    workflow steps inherit them automatically. Used by .github/workflows/verify.yml.
#>

[CmdletBinding()]
param(
    [string] $SawVersion    = '1.5',
    [string] $LlvmVersion   = '20.1.6',
    [string] $SawSpecGenTag = 'latest',
    [switch] $Force,
    [switch] $WriteGithubPath
)

$ErrorActionPreference = 'Stop'

# Hide PowerShell's "writing progress" bar — it tanks Invoke-WebRequest
# throughput on Windows runners by 10× or more.
$ProgressPreference = 'SilentlyContinue'

# Platform probe. pwsh on Windows reports IsWindows = $true; on Linux
# containers IsLinux = $true. macOS isn't a CI target here.
if ($IsWindows)      { $platform = 'Windows' }
elseif ($IsLinux)    { $platform = 'Linux'   }
elseif ($IsMacOS)    { $platform = 'MacOS'   }
else                 { throw "Unsupported platform" }

$exe = if ($platform -eq 'Windows') { '.exe' } else { '' }

# All install state lives under one tree so a bad install can be wiped
# with a single `rm -rf $HOME/.demo_protocol`.
$userHome    = if ($env:HOME) { $env:HOME } else { $env:USERPROFILE }
$installRoot = Join-Path $userHome '.demo_protocol'
New-Item -ItemType Directory -Path $installRoot -Force | Out-Null

# On Windows, exclude the install tree from Defender real-time scanning.
# Extracting the LLVM/SAW tarballs writes thousands of files; AV scanning
# each one as it lands is the single biggest cause of the multi-minute
# (sometimes ~hour) cold install on hosted windows runners. Best-effort:
# hosted runners run elevated so this succeeds; a non-admin local dev just
# gets a warning and the slower path.
if ($platform -eq 'Windows') {
    try {
        Add-MpPreference -ExclusionPath $installRoot -ErrorAction Stop
        Write-Host "  Defender exclusion added for $installRoot" -ForegroundColor DarkGreen
    } catch {
        Write-Host "  (Defender exclusion not applied: $($_.Exception.Message))" -ForegroundColor DarkYellow
    }
}

function Write-Step([string]$msg) {
    Write-Host ''
    Write-Host '═══════════════════════════════════════════════════════' -ForegroundColor Cyan
    Write-Host (" " + $msg)                                              -ForegroundColor Cyan
    Write-Host '═══════════════════════════════════════════════════════' -ForegroundColor Cyan
}

function Get-DownloadedArchive {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string] $Url,
        [Parameter(Mandatory)][string] $DestDir,
        [switch] $Tarball,
        # When set (tarballs only), extract just these archive members
        # instead of the whole thing. Massively reduces disk writes +
        # AV scanning when the archive ships gigabytes we never use.
        [string[]] $IncludeMembers,
        # Passed through to tar --strip-components. Lets selective
        # extraction land members directly at $DestDir without the
        # leading top-level archive directory.
        [int] $StripComponents = 0
    )
    if ((Test-Path -LiteralPath $DestDir) -and -not $Force) {
        # Heuristic: if the dir exists AND is non-empty, treat as cached.
        if ((Get-ChildItem -LiteralPath $DestDir -Force | Measure-Object).Count -gt 0) {
            Write-Host "  already present: $DestDir" -ForegroundColor DarkGreen
            return
        }
    }
    if (Test-Path -LiteralPath $DestDir) {
        Remove-Item -Recurse -Force -LiteralPath $DestDir
    }
    New-Item -ItemType Directory -Path $DestDir -Force | Out-Null

    $leaf = [System.IO.Path]::GetFileName(([uri]$Url).AbsolutePath)
    $tmp  = Join-Path ([System.IO.Path]::GetTempPath()) "demo_protocol-$([guid]::NewGuid())-$leaf"
    Write-Host "  downloading $Url"
    Invoke-WebRequest -Uri $Url -OutFile $tmp -UseBasicParsing

    Write-Host "  extracting → $DestDir"
    if ($Tarball -or $leaf -match '\.tar\.(gz|xz|bz2)$') {
        # Pin to bsdtar on Windows runners. The `tar` on $PATH there is
        # git-bash's MSYS tar, which mis-parses `C:\...` paths as remote
        # SSH hosts ("Cannot connect to C:").
        $tarExe = if ($platform -eq 'Windows') {
            Join-Path $env:SystemRoot 'System32\tar.exe'
        } else { 'tar' }
        $tarArgs = @('-xf', $tmp)
        if ($StripComponents -gt 0) { $tarArgs += "--strip-components=$StripComponents" }
        if ($IncludeMembers)        { $tarArgs += $IncludeMembers }
        Push-Location $DestDir
        try { & $tarExe @tarArgs } finally { Pop-Location }
    } else {
        Expand-Archive -LiteralPath $tmp -DestinationPath $DestDir -Force
    }
    Remove-Item -LiteralPath $tmp -Force -ErrorAction SilentlyContinue
}

# ── Step 1: LLVM ──────────────────────────────────────────────────────
Write-Step "Step 1: LLVM $LlvmVersion (clang, llvm-as, opt)"
$llvmRoot = Join-Path $installRoot 'llvm'
$llvmBin  = $null
if (-not (Test-Path -LiteralPath (Join-Path $llvmRoot ('bin/clang' + $exe))) -or $Force) {
    switch ($platform) {
        'Windows' {
            $url = "https://github.com/llvm/llvm-project/releases/download/llvmorg-$LlvmVersion/clang+llvm-$LlvmVersion-x86_64-pc-windows-msvc.tar.xz"
            $topDir = "clang+llvm-$LlvmVersion-x86_64-pc-windows-msvc"
            if (Test-Path $llvmRoot) { Remove-Item -Recurse -Force $llvmRoot }
            # Only extract what verify_all.ps1 actually uses: the
            # executables (bin/: clang, opt, llvm-as, llvm-link, ...) and
            # clang's builtin headers (lib/clang/<ver>/include). The full
            # tarball unpacks to ~5 GB dominated by LLVM/Clang static .lib
            # archives we never link against — writing + AV-scanning those
            # is what made the cold Windows install take ~an hour and blow
            # the job timeout before the cache could be saved. --strip-
            # components=1 drops the leading "$topDir/" so members land at
            # $llvmRoot/bin and $llvmRoot/lib/clang directly.
            Get-DownloadedArchive -Url $url -DestDir $llvmRoot -Tarball `
                -StripComponents 1 -IncludeMembers "$topDir/bin", "$topDir/lib/clang"
        }
        'Linux' {
            $url = "https://github.com/llvm/llvm-project/releases/download/llvmorg-$LlvmVersion/LLVM-$LlvmVersion-Linux-X64.tar.xz"
            $stage = Join-Path $installRoot 'llvm-stage'
            if (Test-Path $stage) { Remove-Item -Recurse -Force $stage }
            Get-DownloadedArchive -Url $url -DestDir $stage -Tarball
            $inner = Get-ChildItem -LiteralPath $stage -Directory | Select-Object -First 1
            if (Test-Path $llvmRoot) { Remove-Item -Recurse -Force $llvmRoot }
            Move-Item -LiteralPath $inner.FullName -Destination $llvmRoot
            Remove-Item -Recurse -Force $stage
        }
        default { throw "LLVM auto-install not implemented for $platform" }
    }
}
$llvmBin = Join-Path $llvmRoot 'bin'
& (Join-Path $llvmBin ('clang' + $exe)) --version | Select-Object -First 1 | Write-Host -ForegroundColor Green

# ── Step 2: SAW + solvers ─────────────────────────────────────────────
Write-Step "Step 2: SAW $SawVersion with bundled solvers"
$sawRoot = Join-Path $installRoot 'saw'
if (-not (Test-Path -LiteralPath (Join-Path $sawRoot ('bin/saw' + $exe))) -or $Force) {
    $asset = switch ($platform) {
        'Windows' { "saw-$SawVersion-windows-2022-X64-with-solvers.tar.gz" }
        'Linux'   { "saw-$SawVersion-ubuntu-22.04-X64-with-solvers.tar.gz" }
        default   { throw "SAW auto-install not implemented for $platform" }
    }
    $url   = "https://github.com/GaloisInc/saw-script/releases/download/v$SawVersion/$asset"
    $stage = Join-Path $installRoot 'saw-stage'
    if (Test-Path $stage) { Remove-Item -Recurse -Force $stage }
    Get-DownloadedArchive -Url $url -DestDir $stage -Tarball
    # Tarball extracts to saw-<ver>-<os>-with-solvers/ — flatten.
    $inner = Get-ChildItem -LiteralPath $stage -Directory | Where-Object Name -like 'saw-*' | Select-Object -First 1
    if (Test-Path $sawRoot) { Remove-Item -Recurse -Force $sawRoot }
    Move-Item -LiteralPath $inner.FullName -Destination $sawRoot
    Remove-Item -Recurse -Force $stage
}
$sawBin = Join-Path $sawRoot 'bin'
& (Join-Path $sawBin ('saw' + $exe)) --version | Select-Object -First 1 | Write-Host -ForegroundColor Green
& (Join-Path $sawBin ('cryptol' + $exe)) --version 2>&1 | Select-Object -First 1 | Write-Host -ForegroundColor Green

# ── Step 3: saw-spec-gen ──────────────────────────────────────────────
Write-Step "Step 3: saw-spec-gen ($SawSpecGenTag)"
$specGenBin = Join-Path $installRoot 'bin'
New-Item -ItemType Directory -Path $specGenBin -Force | Out-Null
$specGenExe = Join-Path $specGenBin ('saw-spec-gen' + $exe)
if (-not (Test-Path -LiteralPath $specGenExe) -or $Force) {
    # release.yml assets are named:
    #   saw-spec-gen-linux-x86_64.tar.gz
    #   saw-spec-gen-windows-x86_64.zip
    $asset = switch ($platform) {
        'Windows' { 'saw-spec-gen-windows-x86_64.zip'    }
        'Linux'   { 'saw-spec-gen-linux-x86_64.tar.gz'   }
        default   { throw "saw-spec-gen auto-install not implemented for $platform" }
    }
    $url = if ($SawSpecGenTag -eq 'latest') {
        "https://github.com/AmeliaRose802/saw-spec-gen/releases/latest/download/$asset"
    } else {
        "https://github.com/AmeliaRose802/saw-spec-gen/releases/download/$SawSpecGenTag/$asset"
    }
    $stage = Join-Path $installRoot 'spec-gen-stage'
    if (Test-Path $stage) { Remove-Item -Recurse -Force $stage }
    Get-DownloadedArchive -Url $url -DestDir $stage -Tarball:($asset -notlike '*.zip')
    $extracted = Get-ChildItem -LiteralPath $stage -Recurse -File `
        | Where-Object Name -like ('saw-spec-gen' + $exe) `
        | Select-Object -First 1
    if (-not $extracted) { throw "saw-spec-gen binary not found in archive $asset" }
    Copy-Item -LiteralPath $extracted.FullName -Destination $specGenExe -Force
    if ($platform -ne 'Windows') { & chmod +x $specGenExe }
    Remove-Item -Recurse -Force $stage
}
& $specGenExe --version | Select-Object -First 1 | Write-Host -ForegroundColor Green

# ── Step 4: rustup llvm-tools-preview (for Rust pipeline) ─────────────
# rust/saw/run.ps1 reassembles patched LLVM IR with rustup's LLVM
# (matching version) so newer rustc IR attributes round-trip. Without
# this the Rust layer fails with "Unknown attribute 'dead_on_unwind'".
Write-Step 'Step 4: rustup component llvm-tools-preview'
$rustup = Get-Command rustup -ErrorAction SilentlyContinue
if (-not $rustup) {
    Write-Warning 'rustup not on PATH — install via dtolnay/rust-toolchain action before this script.'
} else {
    $components = & rustup component list --installed 2>$null
    if ($components -notmatch 'llvm-tools') {
        & rustup component add llvm-tools-preview
    } else {
        Write-Host '  already installed' -ForegroundColor DarkGreen
    }
    # Discover the rustup llvm bin dir (matching the active toolchain).
    $sysroot = (& rustc --print sysroot).Trim()
    $rustupLlvmBin = $null
    foreach ($cand in @(
        (Join-Path $sysroot 'lib/rustlib/x86_64-pc-windows-msvc/bin'),
        (Join-Path $sysroot 'lib/rustlib/x86_64-unknown-linux-gnu/bin'),
        (Join-Path $sysroot 'lib/rustlib/aarch64-unknown-linux-gnu/bin')
    )) {
        if (Test-Path (Join-Path $cand ('llvm-as' + $exe))) {
            $rustupLlvmBin = $cand
            break
        }
    }
    if ($rustupLlvmBin) {
        Write-Host "  rustup llvm bin: $rustupLlvmBin" -ForegroundColor Green
    } else {
        Write-Warning '  rustup llvm-as not found — Rust verify layer may fail.'
    }
}

# ── Step 5: env file + GITHUB_PATH wiring ─────────────────────────────
Write-Step 'Step 5: write env file'

# Variables the per-language run.ps1 scripts probe for. Format:
#   $env:CLANG_BIN, $env:SAW_EXE, $env:SAW_SPEC_GEN, $env:SOLVER_BIN,
#   $env:CRYPTOL_EXE, $env:RUSTUP_LLVM_BIN
$envScript = @"
# Auto-generated by scripts/ci-install.ps1 — do not edit.
`$env:CLANG_BIN     = '$llvmBin'
`$env:SAW_EXE       = '$(Join-Path $sawBin ("saw" + $exe))'
`$env:SAW_SPEC_GEN  = '$specGenExe'
`$env:SOLVER_BIN    = '$sawBin'
`$env:CRYPTOL_EXE   = '$(Join-Path $sawBin ("cryptol" + $exe))'
"@
if ($rustupLlvmBin) {
    $envScript += "`n`$env:RUSTUP_LLVM_BIN = '$rustupLlvmBin'"
}
$envFile = Join-Path $installRoot 'env.ps1'
Set-Content -Path $envFile -Value $envScript -Encoding UTF8
Write-Host "  wrote $envFile" -ForegroundColor Green

# Plain-text PATH entries (one per line) for GITHUB_PATH. SAW's bin
# directory ships every solver (z3, yices, abc, cvc4, cvc5) plus the
# saw and cryptol drivers themselves, so listing it covers all of them.
$pathEntries = @($llvmBin, $sawBin, $specGenBin)
if ($rustupLlvmBin) { $pathEntries += $rustupLlvmBin }

if ($WriteGithubPath -and $env:GITHUB_PATH) {
    foreach ($p in $pathEntries) {
        Add-Content -Path $env:GITHUB_PATH -Value $p
        Write-Host "  GITHUB_PATH += $p" -ForegroundColor DarkGray
    }
    # Also forward the env vars to subsequent steps.
    if ($env:GITHUB_ENV) {
        $kv = @{
            CLANG_BIN    = $llvmBin
            SAW_EXE      = (Join-Path $sawBin ("saw" + $exe))
            SAW_SPEC_GEN = $specGenExe
            SOLVER_BIN   = $sawBin
            CRYPTOL_EXE  = (Join-Path $sawBin ("cryptol" + $exe))
        }
        if ($rustupLlvmBin) { $kv['RUSTUP_LLVM_BIN'] = $rustupLlvmBin }
        foreach ($k in $kv.Keys) {
            Add-Content -Path $env:GITHUB_ENV -Value ("{0}={1}" -f $k, $kv[$k])
        }
    }
}

Write-Host ''
Write-Host 'demo_protocol toolchain ready.' -ForegroundColor Green
Write-Host "  install root: $installRoot"
Write-Host "  source from any shell: . $envFile"
