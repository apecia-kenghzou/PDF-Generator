@echo off

REM Check if Node.js is installed
node -v >nul 2>&1
if %errorlevel% neq 0 (
  echo reinstall node.msi
) else (
    echo Node.js is already installed.
)


CMD /C npm --version

REM Install npm packages
echo Installing npm packages...

CMD /C npm install

REM Run the index.js script
echo Running index.js...
CMD /C node index.js

echo Script execution completed.
pause