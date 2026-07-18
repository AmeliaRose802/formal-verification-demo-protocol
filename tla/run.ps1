[CmdletBinding()]
param(
    [string]$Model = "MSP",
    [string]$Config = "MSP.cfg",
    [string]$Tla2ToolsJar = $env:TLA2TOOLS_JAR,
    [switch]$Cleanup
)

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

function Resolve-Java {
    $javaCmd = Get-Command java -ErrorAction SilentlyContinue
    if (-not $javaCmd) { return $null }
    return $javaCmd.Source
}

function Resolve-Tla2ToolsJar([string]$ExplicitJar, [string]$BaseDir) {
    if ($ExplicitJar -and (Test-Path $ExplicitJar)) {
        return (Resolve-Path $ExplicitJar).Path
    }

    $candidates = @(
        (Join-Path $BaseDir "tla2tools.jar"),
        (Join-Path $BaseDir "tools\tla2tools.jar"),
        (Join-Path $env:USERPROFILE ".demo_protocol\tla\tla2tools.jar")
    )

    foreach ($c in $candidates) {
        if ($c -and (Test-Path $c)) {
            return (Resolve-Path $c).Path
        }
    }
    return $null
}

$java = Resolve-Java
$jar  = Resolve-Tla2ToolsJar -ExplicitJar $Tla2ToolsJar -BaseDir $here

if (-not $java) {
    Write-Host "TLA_RESULT: SKIPPED (java executable not found on PATH)" -ForegroundColor Yellow
    exit 0
}

if (-not $jar) {
    Write-Host "TLA_RESULT: SKIPPED (tla2tools.jar not found; set TLA2TOOLS_JAR)" -ForegroundColor Yellow
    exit 0
}

if (-not (Test-Path $Model)) {
    throw "Missing model file: $Model"
}
if (-not (Test-Path $Config)) {
    throw "Missing config file: $Config"
}

$meta = Join-Path $here ".tlc-meta"
if ($Cleanup -and (Test-Path $meta)) {
    Remove-Item -Recurse -Force $meta
}
New-Item -ItemType Directory -Path $meta -Force | Out-Null

$tlcArgs = @(
    "-XX:+UseParallelGC",
    "-cp", $jar,
    "tlc2.TLC",
    "-config", $Config,
    "-metadir", $meta,
    "-workers", "1",
    "-cleanup",
    $Model
)

Write-Host "Running TLC on $Model using $jar" -ForegroundColor Cyan
$out = & $java @tlcArgs 2>&1 | Tee-Object -FilePath (Join-Path $here "tlc_run.log")
$exitCode = $LASTEXITCODE

if ($exitCode -eq 0 -and ($out -join "`n") -match "No error has been found") {
    Write-Host "TLA_RESULT: PASS" -ForegroundColor Green
    exit 0
}

Write-Host "TLA_RESULT: FAIL" -ForegroundColor Red
exit 1
