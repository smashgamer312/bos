@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
title bOs - Minimal Batch OS
color 0A
mode con: cols=80 lines=25
cls

echo [bOs] Booting Minimal Operating System...
echo ========================================
echo        bOs - Batch Operating System
echo            Kernel 2.1 | CLI Edition
echo ========================================

:: Load kernel
if exist "core\kernel.bat" (
    call "core\kernel.bat"
) else (
    echo [ERROR] Kernel missing!
    pause
    exit /b 1
)

:: Initialize modules
echo [bOs] Loading modules...
for %%f in (modules\*.bat) do (
    echo   Loading %%~nf...
    call "%%f"
)

:: Start main shell
goto :MAIN_SHELL

:MAIN_SHELL
cls
echo ========================================
echo bOs Shell | User: %USERNAME% | %DATE% %TIME:~0,8%
echo ========================================
echo.
echo Available commands:
echo   help      - Show this help
echo   sysinfo   - System information
echo   apps      - Applications menu
echo   files     - File manager
echo   calc      - Calculator
echo   clock     - Digital clock
echo   edit      - Text editor
echo   games     - Games menu
echo   settings  - System settings
echo   reboot    - Restart bOs
echo   shutdown  - Power off
echo.
set /p "cmd=bOs:%CD%> "

:: Command processor
if /i "%cmd%"=="help" call system\help.bat
if /i "%cmd%"=="sysinfo" call system\sysinfo.bat
if /i "%cmd%"=="apps" call apps\app_launcher.bat
if /i "%cmd%"=="files" call system\fileman.bat
if /i "%cmd%"=="calc" call apps\utilities\calculator.bat
if /i "%cmd%"=="clock" call apps\utilities\clock.bat
if /i "%cmd%"=="edit" call apps\utilities\editor.bat
if /i "%cmd%"=="games" call apps\games\game_launcher.bat
if /i "%cmd%"=="settings" call system\settings.bat
if /i "%cmd%"=="reboot" (
    echo [bOs] Restarting system...
    timeout /t 2 /nobreak >nul
    call BOOT.BAT
)
if /i "%cmd%"=="shutdown" (
    echo [bOs] Shutting down...
    echo Goodbye!
    timeout /t 2 /nobreak >nul
    exit
)
if "%cmd%"=="" goto MAIN_SHELL

:: Try to execute as external command
if exist "apps\%cmd%.bat" (
    call "apps\%cmd%.bat"
    goto MAIN_SHELL
)
if exist "system\%cmd%.bat" (
    call "system\%cmd%.bat"
    goto MAIN_SHELL
)

echo Command not found: %cmd%
echo Type 'help' for available commands
pause >nul
goto MAIN_SHELL
