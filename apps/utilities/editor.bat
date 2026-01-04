@echo off
:: Simple text editor
set /p "filename=Enter filename to edit: "
if "%filename%"=="" exit /b

echo bOs Text Editor | Editing: %filename%
echo Press Ctrl+Z then Enter to save and exit
echo.
echo Start typing below:
echo ====================
copy con "%filename%"

if exist "%filename%" (
    echo File saved: %filename%
    echo Content:
    type "%filename%"
) else (
    echo Edit cancelled
)
pause
