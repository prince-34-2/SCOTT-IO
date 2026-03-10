@echo off
color 0a
title Secret Vault

:: ===== CONFIG =====
set "password=1234"
set "folder=%~dp0Vault"
:: ==================

:: Check if folder exists
if NOT EXIST "%folder%" (
    md "%folder%"
    echo Vault folder created on your Desktop.
    pause
)

:LOGIN
cls
echo Enter Password to Access Vault:
set /p "pass=> "
if "%pass%"=="%password%" goto UNLOCK
echo Incorrect password!
pause
goto LOGIN

:UNLOCK
:: Show folder
attrib -h -s "%folder%"
echo Vault is now visible.
echo Press any key to hide and exit.
pause
:: Hide folder again
attrib +h +s "%folder%"
exit