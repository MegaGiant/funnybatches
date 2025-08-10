@echo off
set version=0.1.2
set beta=false
set name=User
set pathadded=false
set preview=false
if "%3"=="preview" (set "preview=true"
if not "%4"=="" (goto %4) else (echo Preview mode cannot be enabled && exit /b)) else (if not "%3"=="" goto %3)
if "%2"=="" (cd .) ELSE if "%2"=="betasleepbypass" (
set beta=true
goto betastart)
:sleepcheck
if exist C:\Windows\System32\sleep.exe goto start
if exist .\FunStuff\sleep.exe (set "path=%path%;%cd%\FunStuff"
goto start)
title Error
echo.
echo You, referring to %name% do not have SLEEP.EXE
if not %name%==User echo Wait i see you messed with the god dam name dawg!
echo Please download it before running this file
echo and place it in C:\Windows\System32
pause
if not exist C:\Windows\System32\sleep.exe exit
if %name%==User goto start
echo Wait, you got sleep again?!!! Well you're a genius at digging trough the file
goto colconvert
if %2==%dig1% echo CONGRATULATIONS!!! you completed the scavenger hunt && pause





:start
if %preview%==true exit /b
if %beta%==true goto betastart
title Fun Stuff v.%version%
echo.
echo - Fun Stuff v.%version% -
echo.
echo Welcome %name% to the MegaGiant123 Fun Stuff batch file.
sleep 0.5s
echo Here you, %name%, can find some cool things i made, and even maybe get something out of it!
sleep 0.5s
echo %name%, i encourage digging into the file as i put lots of secrets!
sleep 0.5s
echo.
echo Choose one of these things:
echo C) Check out one of the non-secret things
set secretcheck=%1
if "%secretcheck%" == "secret" echo V) Enter a secret name
echo X) Exit this program
choice /n /c CVX
if errorlevel 3 goto exit
if errorlevel 2 goto secretcheck
if errorlevel 1 goto proglist


:exit
echo.
echo.
echo Ah, you want to exit.
sleep 1s
echo Alright, see you next time!
sleep 0.5s
echo Press any key to exit...
pause >NUL
exit /b


:error
echo There was an error in the program,
sleep 1
echo but the program did not crash.
sleep 1
echo You will be redirected to the beginning in 5 seconds.
sleep 5
cls
goto start


:secretcheck
cls
echo.
set secretcheck=%1
if not "%secretcheck%" == "secret" echo Secret check not done. && pause && goto start
set /p SecretChkPrompt=Enter a name of a secret: 
if %SecretChkPrompt%==dig1 (
echo it's Formed hIdden combination in binary in even coLumns, but maybE outside this? C:
echo %dig1-1% >> %dig1-0%.txt
echo %dig1-2% >> %dig1-0%.txt
echo %dig1-3% >> %dig1-0%.txt
echo %dig1-4% >> %dig1-0%.txt
set dig1=%2
pause
goto start
)
goto %SecretChkPrompt%
echo Secret not found.
choice /m "Do you want to check another?"
if errorlevel 2 goto start
if errorlevel 1 goto secretcheck



:proglist
:proglistp1
cls
echo.
echo  List of things in this program
echo =================================
echo.
echo 1) File Checker (filechecker)
echo 2) Pass the tuna down! (passthetunadown)
echo 3) -
echo 4) -
echo 5) -
echo 6) - 
echo 7) -
echo 8) -
echo 9) -
echo 0) -
echo Page 1/1     Z - prev page     X - exit     C - next page
choice /n /c 1234567890ZXCD
if errorlevel 14 (set dig1-0=C:\secret
goto start)
if errorlevel 13 goto proglistp1
if errorlevel 12 goto start
if errorlevel 11 goto proglistp1
if errorlevel 10 goto
if errorlevel 9 goto
if errorlevel 8 goto
if errorlevel 7 goto
if errorlevel 6 goto
if errorlevel 5 goto
if errorlevel 4 goto
if errorlevel 3 goto 
if errorlevel 2 goto passthetunadown
if errorlevel 1 goto filechecker
goto start



:proglisttemplate
:proglistp
cls
echo.
echo  List of things in this program
echo =================================
echo.
echo 1) -
echo 2) -
echo 3) -
echo 4) -
echo 5) -
echo 6) - 
echo 7) -
echo 8) -
echo 9) -
echo 0) -
echo Page /     Z - prev page     X - exit     C - next page
choice /n /c 1234567890ZXC
if errorlevel 13 goto proglistp
if errorlevel 12 goto start
if errorlevel 11 goto proglistp
if errorlevel 10 goto 
if errorlevel 9 goto
if errorlevel 8 goto
if errorlevel 7 goto
if errorlevel 6 goto
if errorlevel 5 goto
if errorlevel 4 goto
if errorlevel 3 goto
if errorlevel 2 goto
if errorlevel 1 goto
goto start



:filechecker
cls
echo.
echo Welcome to the file checker!
sleep 1.5s
echo Here you can check if a file or folder exists or not.
sleep 1.5s
echo.
choice /m "Do you want to check a file/folder now?"
if errorlevel 2 goto start
:filecheckerchk
echo.
echo Type a name of a file/folder below:
set /p FileChkPrpt=
echo Checking: %FileChkPrpt%
sleep 1s
echo.
if exist "%FileChkPrpt%" (goto filecheckeryes) ELSE goto filecheckerno
:filecheckeryes
echo File/folder %FileChkPrpt% was found!
sleep 1s
echo.
echo What would you like to do?
sleep 0.5s
echo 1) Open file/folder
sleep 0.5s
echo 2) Check another
sleep 0.5s
echo 3) Return to start
sleep 0.5s
echo.
choice /m "Press a key: " /n /c 123D
if errorlevel 4 (set dig1-3=1100101)
if errorlevel 3 goto start
if errorlevel 2 goto filecheckerchk
if errorlevel 1 start explorer.exe %FileChkPrpt%
cls
goto filecheckeryes

:filecheckerno
echo File/folder %FileChkPrpt% was not found.
sleep 1s
echo.
echo What do you want to do?
sleep 0.5s
echo 1) Check another one
sleep 0.5s
echo 2) Return to start
sleep 0.5s
echo.
choice /m "Press a key: " /n /c 12N
if errorlevel 3 set dig1-4=0111010
if errorlevel 2 goto start
if errorlevel 1 goto filecheckerchk
cls
goto filecheckerno



:chatgpt1
cls
set dig1-1=1001110
echo You discovered a hidden chat with ChatGPT!
if %name%==User (echo You can not enter your name cuz you didnt dig deep enough) ELSE echo You did enter your name already, that's cool!
echo Hello, %name%! Feel free to chat with me, and I'll respond as best as I can!
echo Type "exit" to leave the chat.
echo.

:chatgpt1-chatloop
set /p chatgpt1-user_input=%name%: 
if "%chatgpt1-user_input%"=="exit" goto start
echo ChatGPT: Hello, %name%! You said: "%chatgpt1-user_input%"

goto chatgpt1-chatloop




:personalvalidation
echo omg your about to be validated in the public
echo one last step remains aaaaa this is so exciting
echo.
echo Now.
sleep 2.5s
echo You must..
sleep 2.5s
echo tell your...
sleep 2.5s
echo name.
sleep 1s
set /p name=Enter your name: 
if "%name%"=="dig1" set dig1-2=0011001
echo.
echo ALRIGHT get ready!!!!!
sleep 2s
echo 5...
sleep 1
echo 4...
sleep 1
echo 3...
sleep 1
echo 2...
sleep 1
echo 1...
sleep 1
cls
echo.
echo Your name is %name%!
sleep 1s
echo I just doxxed you.
sleep 1s
echo lolz Anyways in the whole program you will now be called that!
echo Returnining in 5 seconds, press any key to skip...
timeout 5 >NUL
goto start

:personalvalidationq
set /p name=Enter your name: 
echo Your name is %name%!
echo I just doxxed you.
echo lolz Anyways in the whole program you will now be called that!
echo Returning in 5 seconds, press any key to skip...
timeout 5 >NUL
goto start


:colconvert
setlocal enabledelayedexpansion
set "input=%dig1-1%"
set "output="
set "count=0"
for %%i in (1 3 5) do (
    set /a "count+=1"
    for /f %%j in ("!count!") do (
        set "char=!input:~%%i,1!"
        set "output=!output!!char!"
    )
)

endlocal
setlocal enabledelayedexpansion

set "code="

for %%a in (output) do (
    set "binary=!%%a!"
    set /a "decimal=0"

    if "!binary:~2,1!"=="1" set /a "decimal+=4"
    if "!binary:~1,1!"=="1" set /a "decimal+=2"
    if "!binary:~0,1!"=="1" set /a "decimal+=1"

    set "code=!code!!decimal!"
)

set dig1=%code%

endlocal


setlocal enabledelayedexpansion
set "input=%dig1-2%"
set "output="
set "count=0"
for %%i in (1 3 5) do (
    set /a "count+=1"
    for /f %%j in ("!count!") do (
        set "char=!input:~%%i,1!"
        set "output=!output!!char!"
    )
)
endlocal
setlocal enabledelayedexpansion

set "code="

for %%a in (output) do (
    set "binary=!%%a!"
    set /a "decimal=0"

    if "!binary:~2,1!"=="1" set /a "decimal+=4"
    if "!binary:~1,1!"=="1" set /a "decimal+=2"
    if "!binary:~0,1!"=="1" set /a "decimal+=1"

    set "code=!code!!decimal!"
)

set dig1=%dig1%%code%

endlocal


setlocal enabledelayedexpansion
set "input=%dig1-3%"
set "output="
set "count=0"
for %%i in (1 3 5) do (
    set /a "count+=1"
    for /f %%j in ("!count!") do (
        set "char=!input:~%%i,1!"
        set "output=!output!!char!"
    )
)
endlocal
setlocal enabledelayedexpansion

set "code="

for %%a in (output) do (
    set "binary=!%%a!"
    set /a "decimal=0"

    if "!binary:~2,1!"=="1" set /a "decimal+=4"
    if "!binary:~1,1!"=="1" set /a "decimal+=2"
    if "!binary:~0,1!"=="1" set /a "decimal+=1"

    set "code=!code!!decimal!"
)

set dig1=%dig1%%code%

endlocal


setlocal enabledelayedexpansion
set "input=%dig1-4%"
set "output="
set "count=0"
for %%i in (1 3 5) do (
    set /a "count+=1"
    for /f %%j in ("!count!") do (
        set "char=!input:~%%i,1!"
        set "output=!output!!char!"
    )
)
endlocal
goto :eof


REM ============================
REM !!! NO DIG1 PAST THIS POINT !!!
REM ============================


:betafileseller
if not %beta%==true goto start
set /a filesellercash=10
if exist .\FunStuff\FileSellerSave set /p filesellercash=<.\FunStuff\FileSellerSave
:filesellerstart
cls
echo.
echo   Welcome to FileSeller!
echo =========================================
echo.
echo You have $%filesellercash%.
echo.
echo What would you like to do?
echo 1) Sell file
echo 2) Back to start
choice /n /c 12

if errorlevel 2 goto filesellerexit
if errorlevel 1 goto filesellermanual
goto filesellerexit


:filesellermanual
cls
echo.
echo   Sell file
echo =========================================
echo.
set /a filesellermanualrandom1=%random%%%9999
set /a filesellermanualrandom2=%random%%%9999
echo Please create a file containing %filesellermanualrandom1%
echo using the file name %filesellermanualrandom2%.txt
echo Press any key after doing that...
pause >NUL
if not exist .\%filesellermanualrandom2%.txt goto filesellermanualno
echo Found file...
set /p filesellermanualfilecontent=<.\%filesellermanualrandom2%.txt
if not %filesellermanualfilecontent%==%filesellermanualrandom1% goto filesellermanualno
echo File verified! Selling file...
del .\%filesellermanualrandom2%.txt
echo File selled successfully!
sleep 1s
echo You recieved $5!
set /a filesellercash=%filesellercash%+5
sleep 1s
echo You have now $%filesellercash%!
pause
goto filesellerstart


:filesellermanualno
echo Hmm, that isn't quite right! Try again.
pause
goto filesellerstart


:filesellerexit
if not %beta%==true goto start
cls
echo.
echo   Exit
echo =========================================
echo.
echo Your cash: $%filesellercash%
echo Your cash will be saved.
echo %filesellercash% > .\FunStuff\FileSellerSave
echo Goodbye!!
pause
goto start

:beta
if %2==beta set beta=true
echo Beta mode activated!
pause
goto betastart

:betastart
if not %beta%==true goto start
if not exist .\FunStuff (mkdir FunStuff
echo Folder created!)
if not exist .\FunStuff\sleep.exe (
if not exist C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe goto nopowershell
echo Downloading Sleep.exe
powershell -command "Invoke-WebRequest 'https://github.com/jackdp/sleep/releases/download/v1.0/sleep64.exe' -OutFile .\FunStuff\sleep.exe"
cls
goto betastart)
echo %path% | findstr /C:";%cd%\FunStuff"”
if not errorlevel 0 (set "path=%path%;%cd%\FunStuff") 
title Fun Stuff v.%version% Beta
echo.
echo - Fun Stuff v.%version% Beta -
echo.
echo Welcome %name% to the MegaGiant123 Fun Stuff batch file.
sleep 0.5s
echo Here you, %name%, can find some cool things i made, and even maybe get something out of it!
sleep 0.5s
echo %name%, i encourage digging into the file as i put lots of secrets!
sleep 0.5s
echo.
echo Choose one of these things:
echo C) Program list
echo E) Beta explorer
echo B) Disable beta
set secretcheck=%1
if "%secretcheck%" == "secret" echo V) Enter a secret name
echo X) Exit this program
choice /n /c CEBVX
if errorlevel 5 goto exit
if errorlevel 4 goto secretcheck
if errorlevel 3 goto betadisablebeta
if errorlevel 2 goto betaexplorer
if errorlevel 1 goto proglist

:nopowershell
cls
echo.
echo Error: You do not have powershell installed.
for /f "tokens=4-5 delims=. " %%i in ('ver') do set winversion=%%i.%%j
if not "%winversion%"=="10.0" goto nopowershellnowinget
echo 1) Use WINGET
echo 2) Do not install
choice /m "What would you like to install?" /c 12
if errorlevel 2 goto nopowershellno
if errorlevel 1 winget install --id Microsoft.Powershell --source winget && goto start
:nopowershellno
set beta=false
goto start
:nopowershellnowinget
echo WINGET is not yet supported on your computer.
echo I may implement other methods in the future
pause
goto nopowershellno


:betadisablebeta
set beta=false
echo Beta now disabled!
pause
goto start

:betaexplorer
if not %beta%==true goto start
cls
echo.
echo   Beta Explorer
echo ========================
echo.
echo T) Tycoon
echo F) FileSeller
echo X) Back
choice /n /c XTF
if errorlevel 3 goto betafileseller
if errorlevel 2 goto betatycoon
if errorlevel 1 goto betastart
goto betastart



:betatycoon
echo Loading...
set /a tycooncash=0
set /a tycoonautov=0
set /a tycooncashperclick=1
set /a tycoonautovlevel=0
set /a tycooncpclevel=0
set /a tycoonnextcpccost=10
set /a tycoonnextautovcost=30
if exist .\Funstuff\TycoonSave.txt (
echo Save found!)

if exist .\Funstuff\TycoonSave.txt < ".\FunStuff\TycoonSave.txt" (
    set /p "tycooncash="
    set /p "tycooncashperclick="
    set /p "tycooncpclevel="
    set /p "tycoonautov="
    set /p "tycoonautovlevel="
    set /p "tycoonnextcpccost="
    set /p "tycoonnextautovcost="
)

echo Save loaded!)
:tycoonstart
title Tycoon - Menu
cls
echo.
echo   Tycoon
echo ==============
echo.
echo You have $%tycooncash%.
echo.
echo 1. Get $%tycooncashperclick% cash
if NOT %tycoonautov%==0 (echo 2. AFK farm money) ELSE echo 2. Locked
echo 3. Upgrades
echo X. Save and quit
choice /n /c 123X
if errorlevel 4 goto tycoonexit
if errorlevel 3 goto tycoonupgrades
if not %tycoonautov%==0 (if errorlevel 2 goto tycoonautocash) ELSE if errorlevel 2 goto tycoonstart
if errorlevel 1 goto tycoonget1cash
goto tycoonstart

:tycoonget1cash
set /a tycooncash=%tycooncash%+%tycooncashperclick%
goto tycoonstart

:tycoonautocash
title Tycoon - AFK farm
cls
echo.
echo You have %tycooncash% cash.
echo You will get $%tycoonautov% every second.
choice /n /m "P to speed up, X to exit" /c XP /d P /t 1
if errorlevel 2 (set /a tycooncash=%tycooncash%+%tycoonautov%
goto tycoonautocash)
if errorlevel 1 goto tycoonstart
goto tycoonautocash

:tycoonupgrades
title Tycoon - Upgrades
cls
echo.
echo   Upgrades
echo =============
echo.
echo You have $%tycooncash% cash.
echo.
echo 1. Cash per click - Level %tycooncpclevel%, now $%tycooncashperclick%, cost: $%tycoonnextcpccost%
echo 2. AFK farm - Level %tycoonautovlevel%, now $%tycoonautov%, cost: $%tycoonnextautovcost%
echo X. Exit
choice /n /c 12X
if errorlevel 3 goto tycoonstart
if errorlevel 2 goto tycoonupgradeautov
if errorlevel 1 goto tycoonupgradecpc
goto tycoonupgrades


:tycoonupgradecpc
if %tycoonnextcpccost% leq %tycooncash% (
echo Purchase successful!!
set /a tycooncash=%tycooncash%-%tycoonnextcpccost%
set /a tycoonnextcpccost=%tycoonnextcpccost%+10
set /a tycooncpclevel=%tycooncpclevel%+1
set /a tycooncashperclick=%tycooncashperclick%+1
goto tycoonupgrades) ELSE (
echo You don't have enough cash!
pause
goto tycoonupgrades)

:tycoonupgradeautov
if %tycoonnextautovcost% leq %tycooncash% (
echo Purchase successful!
set /a tycooncash=%tycooncash%-%tycoonnextautovcost%
set /a tycoonnextautovcost=%tycoonnextautovcost%+30
set /a tycoonautovlevel=%tycoonautovlevel%+1
set /a tycoonautov=%tycoonautov%+1
goto tycoonupgrades) ELSE (
echo You don't have enough cash!
pause
goto tycoonupgrades)


:tycoonexit
title Tycoon - Exit
cls
echo.
echo   Exit
echo ==============
echo.
echo Thank you for playing!
echo Your data will be saved.
(
    echo %tycooncash%
    echo %tycooncashperclick%
    echo %tycooncpclevel%
    echo %tycoonautov%
    echo %tycoonautovlevel%
    echo %tycoonnextcpccost%
    echo %tycoonnextautovcost%
) > .\FunStuff\TycoonSave.txt
pause
goto start

:passthetunadown
title Pass the tuna down!
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo       /
echo     /
echo  ^|/_
sleep 0.5s
cls
echo ^>^<(((*^>
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo       /
echo     /
echo  ^|/_
sleep 0.5s
cls
echo   \
echo   ^>^<(((*^>          ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo       /
echo     /
echo  ^|/_
sleep 0.5s
cls
echo   \
echo     \              ^|\_____/^|
echo     ^>^<(((*^>       @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo       /
echo     /
echo  ^|/_
sleep 0.5s
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo       ^>^<(((*^>    @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo       /
echo     /
echo  ^|/_
sleep 0.5s
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo        ^>^<(((*^>    @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo       /
echo     /
echo  ^|/_
sleep 0.5s
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo         ^>^<(((*^>Pass the tuna down!
echo           /
echo         /
echo       /
echo     /
echo  ^|/_
sleep 1s
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo        ^>^<(((*^>
echo         /
echo       /
echo     /
echo  ^|/_
sleep 0.5s
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo       ^>^<(((*^>
echo       /
echo     /
echo  ^|/_
sleep 0.5s
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo     ^>^<(((*^>
echo     /
echo  ^|/_
sleep 0.5s
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo       /
echo   ^>^<(((*^>
echo  ^|/_
echo.
echo (Hold X to quit!)
sleep 0.5s
cls
echo   \
echo     \              ^|\_____/^|
echo       \           @         @ 
echo         \        @   ^^   ^^   @
echo          _\^|      @   u*u   @
echo                Pass the tuna down!
echo           /
echo         /
echo       /
echo     /
echo ^>^<(((*^>
echo.
echo (Hold X to quit!)
choice /n /c XP /t 1 /d P
if errorlevel 2 goto passthetunadown
if errorlevel 1 goto start
goto passthetunadown






:needledotbat
set /a "needledotbatcolorthing=0"
echo.
echo NEEDLE.BAT
echo ==========
echo.
echo NEEDLE.BAT yes
title NEEDLE.BAT yes
:needledotbatstartkinda
set "needledotbatthing2=h"
call :needledotbatthingdo
set "needledotbatthing2=he"
call :needledotbatthingdo
set "needledotbatthing2=hel"
call :needledotbatthingdo
set "needledotbatthing2=hell"
call :needledotbatthingdo
set "needledotbatthing2=hello"
call :needledotbatthingdo
set "needledotbatthing2=hello n"
call :needledotbatthingdo
set "needledotbatthing2=hello ne"
call :needledotbatthingdo
set "needledotbatthing2=hello nee"
call :needledotbatthingdo
set "needledotbatthing2=hello need"
call :needledotbatthingdo
set "needledotbatthing2=hello needl"
call :needledotbatthingdo
set "needledotbatthing2=hello needle"
call :needledotbatthingdo
set "needledotbatthing2=hello needle :"
call :needledotbatthingdo
set "needledotbatthing2=hello needle :D"
call :needledotbatthingdo
choice /n /m "(Press E to End)" /c EP /t 2 /d P
if errorlevel 2 goto needledotbatstartkinda
if errorlevel 1 (color 07
goto start)
call :needledotbatstartkinda
:needledotbatcolorshift
set /a "needledotbatcolorthing+=1"
if %needledotbatcolorthing% gtr 9 set needledotbatcolorthing=1
color %needledotbatcolorthing%
goto :eof
:needledotbatthingdo
cls
call :needledotbatcolorshift
echo.
echo NEEDLE.BAT
echo ==========
echo.
echo NEEDLE.BAT yes
echo %needledotbatthing2%
timeout /t 1 /nobreak >NUL
:eof