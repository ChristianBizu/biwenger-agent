# Ejecuta main.py usando el venv del proyecto.
# Uso (desde la raiz):
#   .\run.ps1
#   .\run.ps1 --once
#   .\run.ps1 --help

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $Root

$Python = Join-Path $Root ".venv\Scripts\python.exe"
if (-not (Test-Path $Python)) {
    $Python = "python"
    Write-Warning "No se encontro .venv; usando 'python' del PATH."
}

& $Python (Join-Path $Root "main.py") @args
exit $LASTEXITCODE
