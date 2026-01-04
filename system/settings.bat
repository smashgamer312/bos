@echo off
:SETTINGS_MENU
cls
echo ========== bOs SETTINGS ==========
echo.
echo  1. Change prompt
echo  2. Set default user
echo  3. Display settings
echo  4. Save configuration
echo  5. View system logs
echo  6. Reset to defaults
echo  7. Back to main
echo.
set /p choice="Select [1-7]: "

if "%choice%"=="1" (
    set /p "NEW_PROMPT=Enter new prompt: "
    set PROMPT=%NEW_PROMPT%
    goto SETTINGS_MENU
)
if "%choice%"=="2" (
    set /p "NEW_USER=Enter username: "
    set DEFAULT_USER=%NEW_USER%
    if not exist "users\%NEW_USER%" mkdir "users\%NEW_USER%"
    goto SETTINGS_MENU
)
if "%choice%"=="3" (
    color
    echo Current: %PROMPT%
    echo Screen: %LINES% lines, %COLUMNS% columns
    pause
    goto SETTINGS_MENU
)
if "%choice%"=="4" (
    echo Saving configuration...
    echo OS_NAME=%OS_NAME% > config\system.cfg
    echo OS_VERSION=%OS_VERSION% >> config\system.cfg
    echo DEFAULT_USER=%DEFAULT_USER% >> config\system.cfg
    echo PROMPT=%PROMPT% >> config\system.cfg
    echo Configuration saved!
    pause
    goto SETTINGS_MENU
)
if "%choice%"=="5" (
    if exist "logs\system.log" (
        type "logs\system.log"
    ) else (
        echo No logs found
    )
    pause
    goto SETTINGS_MENU
)
if "%choice%"=="6" (
    set OS_NAME=bOs
    set OS_VERSION=2.1
    set DEFAULT_USER=%USERNAME%
    set PROMPT=bOs:%%CD%%^>
    echo Settings reset!
    pause
    goto SETTINGS_MENU
)
if "%choice%"=="7" exit /b
goto SETTINGS_MENU
