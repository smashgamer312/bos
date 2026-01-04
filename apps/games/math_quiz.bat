@echo off
cls
echo ===== MATH QUIZ =====
set /a score=0
set /a total=3

for /l %%i in (1,1,%total%) do (
    set /a a=%RANDOM% %% 15 + 1
    set /a b=%RANDOM% %% 10 + 1
    set /a op=%RANDOM% %% 4
    
    if %op% EQU 0 (
        set "sign=+"
        set /a answer=%a%+%b%
    )
    if %op% EQU 1 (
        set "sign=-"
        set /a answer=%a%-%b%
    )
    if %op% EQU 2 (
        set "sign=*"
        set /a answer=%a%*%b%
    )
    if %op% EQU 3 (
        set "sign=/"
        set /a answer=%a%/%b%
    )
    
    set /p "user=Question %%i: %a% %sign% %b% = "
    if %user% EQU %answer% (
        echo Correct!
        set /a score+=1
    ) else (
        echo Wrong! Answer: %answer%
    )
    echo.
)

echo Your score: %score%/%total%
pause
