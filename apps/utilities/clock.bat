@echo off
cls
echo ========== DIGITAL CLOCK ==========
echo Press Ctrl+C to exit
echo.
:clock_loop
echo Current time: %TIME:~0,8%
echo Date: %DATE%
ping -n 2 127.0.0.1 >nul 2>&1
cls
goto clock_loop
