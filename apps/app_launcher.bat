@echo off
:APPS_MENU
cls
echo ========== bOs APPLICATIONS ==========
echo.
echo  1. Calculator
echo  2. Digital Clock
echo  3. Text Editor
echo  4. Task Manager
echo  5. Process Viewer
echo  6. Back to main
echo.
set /p choice="Select [1-6]: "

if "%choice%"=="1" call apps\utilities\calculator.bat
if "%choice%"=="2" call apps\utilities\clock.bat
if "%choice%"=="3" call apps\utilities\editor.bat
if "%choice%"=="4" call system\taskman.bat
if "%choice%"=="5" call system\processes.bat
if "%choice%"=="6" exit /b
goto APPS_MENU
