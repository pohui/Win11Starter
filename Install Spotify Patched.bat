@echo off

title Spotify Installer (Patched Version) by POHUI

echo.
echo.
echo SELECT VERSION...
echo.
echo.

echo [1] New Theme
echo [2] Old Theme (Outdated) 1.2.13.661.ga588f749-4064
echo.
echo You select: 
choice /c 12 /n



if errorlevel 1 goto new
if errorlevel 2 goto old

:new
echo Installing New Theme Version
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "&{[Net.ServicePointManager]::SecurityProtocol = 3072}; """"& { $(Invoke-WebRequest -UseBasicParsing 'https://spotx-official.github.io/run.ps1')} -new_theme """" | Invoke-Expression"
pause
exit /b

:old
echo Installing Old Theme Version
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "&{[Net.ServicePointManager]::SecurityProtocol = 3072}; """"& { $(Invoke-WebRequest -UseBasicParsing 'https://spotx-official.github.io/run.ps1')} -v 1.2.13.661.ga588f749-4064 -confirm_spoti_recomended_over -block_update_on """" | Invoke-Expression"

pause
exit /b
