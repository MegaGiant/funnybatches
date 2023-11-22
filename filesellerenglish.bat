@echo off
set /a cash=10
if exist .\FileSellerSave set /p cash=<.\FileSellerSave
:start
cls
echo.
echo   Welcome to FileSeller!
echo =========================================
echo.
echo You have $%cash%.
echo.
echo What would you like to do?
echo 1) Sell a file
echo 2) Exit
choice /n /c 12

if errorlevel 2 goto exit
if errorlevel 1 goto manual
goto exit

:manual
cls
echo.
echo   Sell a file
echo =========================================
echo.
set /a manualrandom1=%random%%%9999
set /a manualrandom2=%random%%%9999
echo Please create a file with the content %manualrandom1%
echo with the file name %manualrandom2%.txt
echo Press any key to continue...
pause >NUL
if not exist .\%manualrandom2%.txt goto manualno
echo File found...
set /p manualfilecontent= < .\%manualrandom2%.txt
if not %manualfilecontent%==%manualrandom1% goto manualno
echo File verified! Selling the file...
del .\%manualrandom2%.txt
echo File sold!
echo You received $5!
set /a cash=%cash%+5
echo You now have $%cash%!
pause
goto start

:manualno
echo Unfortunately, the file does not match! Please try again.
pause
goto start

:exit
cls
echo.
echo   Exit
echo =========================================
echo.
echo Your cash: $%cash%
echo Your cash will be saved.
echo %cash% > FileSellerSave
echo Goodbye!
pause
exit