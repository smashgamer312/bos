@echo off
:: Task Manager
cls
echo ========== TASK MANAGER ==========
echo Running processes:
echo.
tasklist | findstr /i "cmd conhost"
echo.
echo bOs processes: %PROCESSES%
echo Memory usage: %MEMORY% KB
echo.
pause
