title CobaltConverter
:main
cls
@echo off
echo ---------------------------------------------
echo # CobaltConverter pre-alpha v0.1 by A.I.V #
echo ---------------------------------------------
echo Wellcome!
echo 1. Start transcription
echo 2. Help
echo 3. About
CHOICE /C 123 /M "Enter your choice:"
    if %errorlevel%==1 goto :convert
    if %errorlevel%==2 goto :help
    if %errorlevel%==3 goto :about

:convert
echo 1. Use defaults (to modify defaults, see defaults.json, and :def in this file)
echo 2. Manual
echo 3. Advanced
echo 4. Back to main menu
CHOICE /C 1234 /M "Enter your choice:"
    if %errorlevel%==1 goto :def
    if %errorlevel%==2 goto :manual
    if %errorlevel%==3 goto :advanced
    if %errorlevel%==4 goto :main
:def
for /f "tokens=* delims=" %%a in ('jsonextractor.bat defaults.json "settings[0].presets[0].id"') do (
 set "inFile=%%~a"
)
for /f "tokens=* delims=" %%a in ('jsonextractor.bat defaults.json "settings[0].presets[1].id"') do (
 set "outFile=%%~a"
)

ffmpeg -i %inFile% %outFile%
pause
goto :main

:manual
set /p original= Enter the path to the original file:
set /p coneverted= Enter the path to save the converted file:

ffmpeg -i %original% %coneverted%
pause
goto :main
:advanced
set /p command= Enter the command (see help for more information):
%command%
pause
goto :main

:help
ffmepg -h
pause
goto :main

:about
echo CobaltConverter is a simple tool to make using FFMPEG easier.
echo This is a pre-alpha release, because I hope to write real GUI software at some point, and the script is the result of work to get familiar with the tool.
echo enjoy :)
pause
goto :main