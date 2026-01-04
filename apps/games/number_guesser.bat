@echo off
cls
echo ===== NUMBER GUESSER =====
set /a number=%RANDOM% %% 100 + 1
set /a attempts=0

:guess_loop
set /p "guess=Guess number (1-100): "
if "%guess%"=="quit" exit /b

set /a attempts+=1
if %guess% LSS %number% echo Too low!
if %guess% GTR %number% echo Too high!
if %guess% EQU %number% (
    echo Congratulations! You guessed in %attempts% attempts.
    pause
    exit /b
)
goto guess_loop
