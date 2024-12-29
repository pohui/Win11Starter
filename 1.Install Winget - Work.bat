@echo off
setlocal

:: Specify the process name (in this case, winget)
set "processName=winget"

:: Get the process by name
for /f "tokens=2" %%I in ('tasklist /fi "imagename eq %processName%" ^| find "%processName%"') do set "pid=%%I"

:: Check if the process is found
if defined pid (
    echo Process ID of %processName% is %pid%
) else (
    echo %processName% is not running
)

endlocal

powershell -Command "Stop-Process -Id 083b2843-2705-0001-d4d4-4f080527da01"
powershell -ExecutionPolicy Bypass -Command "Add-AppxPackage -Path '.\Data\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'"
pause