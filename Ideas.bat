@echo off
setlocal enabledelayedexpansion
echo.
echo   Generator Losowych Pomyslow
echo ==================================
echo.
echo Kliknij jakikolwiek przycisk zeby generowac...
pause >NUL
echo Generowanie...

set /a Random1=%random% %% 6
set /a Random2=%random% %% 6
set /a Random3=%random% %% 6
set /a Theme=%random% %% 6
goto idea1

:after
echo.
echo Twoj pomysl to: !idea1[%Random1%]! !idea2[%Random2%] !idea3[%Random3%]!
echo Temat tego to: !theme[%Theme%]!
endlocal
pause
exit /b

:idea1
set idea1[0]=Generator
set idea1[1]=Test
set idea1[2]=Symulator
set idea1[3]=Gra
set idea1[4]=Legenda
set idea1[5]=Historia

:idea2
set idea2[0]=Wielkich
set idea2[1]=Magii
set idea2[2]=Losowych
set idea2[3]=Nieskonczonych
set idea2[4]=Artystycznych
set idea2[5]=Smiesznych

:idea3
set idea3[0]=Kotow
set idea3[1]=Robuksow
set idea3[2]=Pieniedzy
set idea3[3]=Ciasteczek
set idea3[4]=Plikow
set idea3[5]=Planet

:theme
set theme[0]=Kosmos
set theme[1]=Scam
set theme[2]=Zaawansowanosc
set theme[3]=Komputery
set theme[4]=Wirus
set theme[5]=Wybrana gra
goto after