@echo off
title Chat - Messages



:start
cls
echo.
echo   Multiplayer Test
echo ===================================
echo.
echo Connecting to server...
goto connected
:connected
echo Connected!
timeout 1 /nobreak >NUL
goto game
:game
cls
echo.
echo   Multiplayer Test
echo ===================================
echo.
echo Welcome to my program!
echo It is a simple chat program.
echo.
echo What would you like to do?
echo 1) Join the lobby
echo 2) Exit the game
choice /n /c 123
if errorlevel 2 goto exit
if errorlevel 1 goto join
:join
cls
echo.
echo Joining lobby...
if not exist lastmessage.txt goto notfound
set llm=cheese 
set llma=cheese 
choice /m "Do you want a window to type stuff?" /d N /t 5
if errorlevel 2 goto skiptype
start Typechat.bat
echo A new windows opened in which you can join and type your messages.
:skiptype
echo You are now viewing the chat!

:chk
set /p lm=<lastmessage.txt
set /p lma=<lastmauthor.txt
if not "%llm%"=="%lm%" goto newmessage
if not "%llma%"=="%lma%" goto newmessage
goto chk
:newmessage
echo %lma%:
echo %lm%
set llm=%lm%
set llma=%lma%
goto chk

:notfound
set percent=%%
echo The lobby was not found!
echo Creating lobby files...
echo cheese > lastmessage.txt
echo cheese > lastmauthor.txt
echo @echo off > Typechat.bat
echo title Chat - Type here >> Typechat.bat
echo :start >> Typechat.bat
echo set /p a=What's your name: >>Typechat.bat
echo echo Server^>^ lastmauthor.txt >>Typechat.bat
echo echo %percent%a%percent% joined the chat! ^>^ lastmessage.txt >>Typechat.bat
echo echo Type your messages below and they will appear in the other window >>Typechat.bat
echo :type >>Typechat.bat
echo set /p m=>>Typechat.bat
echo echo %percent%a%percent% ^>^ lastmauthor.txt>>Typechat.bat
echo echo %percent%m%percent% ^>^ lastmessage.txt>>Typechat.bat
echo goto type>>Typechat.bat
echo Lobby files created!
goto join

:exit
echo Thank you for using this program!
pause
exit