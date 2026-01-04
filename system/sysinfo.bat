@echo off
cls
echo ========== bOs SYSTEM INFORMATION ==========
echo.
echo Operating System: %OS_NAME% v%OS_VERSION%
echo Build: %OS_BUILD%
echo.
echo User: %DEFAULT_USER%
echo Boot Date: %BOOT_DATE%
echo Boot Time: %START_TIME%
echo Current Time: %TIME:~0,8%
echo.
echo System Status:
echo   Memory: %MEMORY% KB allocated
echo   Processes: %PROCESSES% running
echo   Network: %NET_STATUS%
echo   Storage: %FREE_SPACE%%% free
echo.
echo System Paths:
echo   Root: %CD%
echo   User: %USERPROFILE%
echo   Temp: %TEMP%
echo.
pause
