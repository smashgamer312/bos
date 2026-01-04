@echo off
:: bOs Kernel v2.1
set OS_NAME=bOs
set OS_VERSION=2.1
set OS_BUILD=2024.01
set DEFAULT_USER=%USERNAME%
set PROMPT=bOs:%%CD%%^>

:: System paths
set SYS_PATH=.\core;.\modules;.\system;.\apps
set PATH=%PATH%;%SYS_PATH%

:: Initialize system variables
set /a MEMORY=4096
set /a PROCESSES=0
set START_TIME=%TIME%
set BOOT_DATE=%DATE%

:: Load configuration
if exist "config\system.cfg" (
    for /f "tokens=1,2 delims==" %%a in (config\system.cfg) do (
        set %%a=%%b
    )
)

:: Create system directories
if not exist "storage\temp" mkdir storage\temp
if not exist "logs\" mkdir logs
if not exist "users\%DEFAULT_USER%" mkdir users\%DEFAULT_USER%

echo [KERNEL] bOs v%OS_VERSION% initialized
echo [KERNEL] User: %DEFAULT_USER%
echo [KERNEL] Boot time: %START_TIME%
