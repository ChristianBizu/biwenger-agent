@echo off
REM Ejecuta main.py usando el venv del proyecto.
REM Uso (desde la raiz):
REM   run
REM   run --once
REM   run --help

cd /d "%~dp0"

if exist "%~dp0.venv\Scripts\python.exe" (
    "%~dp0.venv\Scripts\python.exe" "%~dp0main.py" %*
) else (
    echo AVISO: No se encontro .venv; usando python del PATH.
    python "%~dp0main.py" %*
)

exit /b %ERRORLEVEL%
