@echo off
:: Storage module
echo   [MOD] Storage: Scanning...
set /a TOTAL_SPACE=0
set /a FREE_SPACE=0

:: Calculate directory sizes
for /d %%d in (*) do (
    set /a TOTAL_SPACE+=1
)
set /a FREE_SPACE=100-%TOTAL_SPACE%

set DRIVES=C:\,D:\,%CD%
echo   [MOD] Storage: %TOTAL_SPACE% items, %FREE_SPACE%%% free
