@echo off
:: bOs File Manager
:FILES_MAIN
cls
echo ========== bOs FILE MANAGER ==========
echo Current directory: %CD%
echo =====================================
echo.
dir /b
echo.
echo Commands: open, copy, del, rename, mkdir, back
set /p "fcmd=FileCmd> "

if /i "%fcmd%"=="back" exit /b
if /i "%fcmd%"=="mkdir" (
    set /p "dirname=Enter directory name: "
    mkdir "%dirname%"
    goto FILES_MAIN
)
if /i "%fcmd:~0,4%"=="open" (
    set "file=%fcmd:~5%"
    if exist "%file%" (
        type "%file%"
        pause
    ) else (
        echo File not found
        pause
    )
    goto FILES_MAIN
)
if /i "%fcmd:~0,4%"=="copy" (
    set "files=%fcmd:~5%"
    for /f "tokens=1,2" %%a in ("%files%") do (
        copy "%%a" "%%b"
        echo Copied: %%a to %%b
    )
    pause
    goto FILES_MAIN
)
if /i "%fcmd:~0,3%"=="del" (
    set "file=%fcmd:~4%"
    if exist "%file%" (
        del "%file%"
        echo Deleted: %file%
    )
    pause
    goto FILES_MAIN
)
goto FILES_MAIN
