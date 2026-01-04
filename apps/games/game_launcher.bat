@echo off
:GAMES_MENU
cls
echo ========== bOs GAMES ==========
echo.
echo  1. Number Guesser
echo  2. Math Quiz
echo  3. Text Adventure
echo  4. Memory Game
echo  5. Back to main
echo.
set /p choice="Select [1-5]: "

if "%choice%"=="1" call apps\games\number_guesser.bat
if "%choice%"=="2" call apps\games\math_quiz.bat
if "%choice%"=="3" call apps\games\adventure.bat
if "%choice%"=="4" call apps\games\memory.bat
if "%choice%"=="5" exit /b
goto GAMES_MENU
