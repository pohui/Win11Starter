@echo off

color 0e
title WINGET DOWNLOADER GENERATOR v0.1 beta

echo. WINGET INSTALLER GENERATOR
echo.
echo. Welcome, %username%
echo. TIP: You can use whitespace in filename. 
echo.
echo.

set /p "wingetID=Winget ID: "

set /p "filename=Filename (.bat): "

REM insert @echo off at the first of the file
echo @echo off > "Install %filename%.bat"

REM create file by appending
echo winget install %wingetID% --accept-package-agreements --accept-source-agreements -h >> "Install %filename%.bat"


color 0a
REM echo COMPLETE
REM pause

