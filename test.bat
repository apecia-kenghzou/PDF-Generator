@echo off
setlocal

REM Get the Node.js version
for /f "tokens=2 delims=v." %%v in ('node -v 2^>nul') do (
  set node_version_major=%%v
)

REM Check if the command succeeded
if %errorlevel% neq 0 (
  echo reinstall node.msi
) else (
  REM Check if the major version is greater than or equal to 18
  if %node_version_major% geq 20 (
    echo %node_version_major%
    echo Node.js version is 18 or later.
  ) else (
    echo Node.js version is less than 18.
  )
)

endlocal
pause