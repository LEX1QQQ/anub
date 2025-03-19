schtasks /create /tn "CheckMyProgram" /tr "C:\Path\To\check_process.bat" /sc minute /mo 1 /ru SYSTEM /rl HIGHEST /f
@echo off
tasklist | find /i "MyProgram.exe" >nul
if %ERRORLEVEL% NEQ 0 (
    start "" "C:\Path\To\MyProgram.exe"
)
