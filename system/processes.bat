@echo off
cls
echo ========== PROCESS VIEWER ==========
echo.
echo bOs System Processes:
echo   1. Kernel (pid: 0)
echo   2. Command Processor (pid: 1)
echo   3. File Manager (pid: 2)
echo   4. Settings Manager (pid: 3)
echo.
echo Windows Processes:
tasklist | head -15
echo.
pause
