@echo off
:CALCULATOR
cls
echo ========== bOs CALCULATOR ==========
echo.
echo Operations: + - * / ^ (power) % (modulo)
echo Type 'exit' to quit
echo.
:calc_loop
set /p "expr=Expression: "
if /i "%expr%"=="exit" exit /b

set /a result=%expr% 2>nul
if errorlevel 1 (
    echo Error: Invalid expression
) else (
    echo Result: %result%
)
echo.
goto calc_loop
