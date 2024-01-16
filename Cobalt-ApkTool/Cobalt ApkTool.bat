:main
echo off
cls
@echo ***********************************
@echo Cobalt ApkTool by A.I.V Mobile
@echo ***********************************
@echo 1. install framework
@echo 2. decompile all APKs (up to 30)
@echo 3. recompile
@echo 4. sigen recompiled APKs
@echo 5. clean
@echo 6. ReadMe
@echo 7. visit in our GitHub page
@echo off
CHOICE /C 1234567 /M "Enter your choice:"
    if %errorlevel%==1 goto :install_framework
    if %errorlevel%==2 goto :decompile
    if %errorlevel%==3 goto :recompile
    if %errorlevel%==4 goto :signer
    if %errorlevel%==5 goto :clean
    if %errorlevel%==6 goto :readme
    if %errorlevel%==7 goto :github
:install_framework
@echo =====================================================
@echo drop your framework-res, as fw/framework-res.apk
@echo =====================================================
apktool if fw/framework-res.apk
goto :main
:decompile
@echo ==============================
@echo drop your APKs in this folder
@echo ==============================
set /a Index=1
 
setlocal enabledelayedexpansion
 
for /r %%i in (*.apk) do ( 
    rename "%%i" "!Index!.apk"
    set /a Index+=1
)

echo off
for /L  %%a in (1,1,30) do apktool d %%a.apk
@echo if you want to close software, close this window. if you want to return to main menu
pause
goto :main
:recompile
@echo ==============================
@echo your recompiled APKs is in /apk-name (for example, 1)/dist
@echo ==============================
for /L  %%a in (1,1,30) do apktool b %%a\
@echo your log is in log.txt
@echo if you want to close software, close this window. if you want to return to main menu
pause
goto :main
:signer
mkdir sigend
java -jar signapk.jar certificate.pem key.pk8 1/dist/1.apk sigend/1-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 2/dist/2.apk sigend/2-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 3/dist/3.apk sigend/3-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 4/dist/4.apk sigend/4-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 5/dist/5.apk sigend/5-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 6/dist/6.apk sigend/6-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 7/dist/7.apk sigend/7-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 8/dist/8.apk sigend/8-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 9/dist/9.apk sigend/9-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 10/dist/10.apk sigend/10-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 11/dist/11.apk sigend/11-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 12/dist/12.apk sigend/12-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 13/dist/13.apk sigend/13-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 14/dist/14.apk sigend/14-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 15/dist/15.apk sigend/15-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 16/dist/16.apk sigend/16-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 17/dist/17.apk sigend/17-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 18/dist/18.apk sigend/18-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 19/dist/19.apk sigend/19-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 20/dist/20.apk sigend/20-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 21/dist/21.apk sigend/21-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 22/dist/22.apk sigend/22-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 23/dist/23.apk sigend/23-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 24/dist/24.apk sigend/24-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 25/dist/25.apk sigend/25-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 26/dist/26.apk sigend/26-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 27/dist/27.apk sigend/27-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 28/dist/28.apk sigend/28-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 29/dist/29.apk sigend/29-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 30/dist/30.apk sigend/30-sigen.apk
@echo ------------------------------------------
@echo your sigend APKs in sigend folder...
@echo ------------------------------------------
@echo if you want to close software, close this window. if you want to return to main menu
pause
goto :main
:clean
@echo NOTE: this option has delete all orginal APKs and decompiled APKs (project folders)!
pause
del *.apk
for /L  %%a in (1,1,30) do rmdir /Q /S %%a\
@echo if you want to close software, close this window. if you want to return to main menu
pause
goto :main
:readme
@echo *************************************
@echo Cobalt ApkTool version 0.3
@echo *************************************
@echo README
@echo =====================
@echo you can to decompile up to 30 APK files at a time.
@echo drop APK files in folder with this files:
@echo 1. this script
@echo 2. apktool.bat
@echo 3. apktool_2.6.0.jar
@echo 4. aapt.exe
@echo 5. certificate.pem
@echo 6. key.pk8
@echo 7. signapk.jar
@echo 8. signer.bat
@echo 9. fw folder (in fw folder, put your framework-res.apk file)
@echo and run this script.
@echo you lose the APK names... they are renamed to numbers (1,2,3,4,5....)
@echo this software is Open source (under GPL-3.0 License)
@echo =====================
@echo if you want to close software, close this window. if you want to return to main menu
pause
goto :main
:github
start https://github.com/AshiVered/APK-Multi-Tool
goto :main