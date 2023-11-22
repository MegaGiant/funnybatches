@echo off
echo Welcome to BatchExtract version 0.0.1
echo Note: Pasting works in Windows Terminal
echo Note: Extractor file name will auto add .bat to the end
echo Note: Does not accept empty cells, adding a space will spit out "Echo is on"
echo Note: Only accepts standard characters, so extracting an EXE file would not do it
set /p ExtractingFile=Extractor file name/path: 
set /p ExtFile=Extracting file name/path: 
echo Type the file contents below:
:start
set /p Prompt=
echo echo ^^^%Prompt%^^^ ^>^^>^ ^%ExtFile%^ >> %ExtractingFile%.bat
goto start