@echo off
:main
Title BogusEdit 1.1
color 0e
call C:\Data\Global_Config.cmd
cls
echo Press A to make a cert, B for a another kind of cert and C for an image and D to exit
CHOICE /C:ABCD /N /T:300 /D:C >nul
if "%errorlevel%"=="1" (goto :cert)
if "%errorlevel%"=="2" (goto :key)
if "%errorlevel%"=="3" (goto :image)
if "%errorlevel%"=="4" (exit)

:cert
cls
Title Making cert..
echo please wait...
echo FS_Certificate_000000AE_BEV2>C:\Users\%ActualUserName%\Windata\HACKDEEZ\exports\DUMP_%RANDOM%.p7b
cls
echo complete, Press any key to go back
pause >nul
goto :main

:key
cls
Title Making certificate
echo please wait...
echo FS_Key_11111115AE_BEV2>C:\Users\%ActualUserName%\Windata\HACKDEEZ\exports\DUMP_%RANDOM%.p12
cls
echo complete, Press any key to go back
pause >nul
goto :main

:image
cls
Title Making image..
echo please wait...
echo FS_Image_H0M3BR3W4LIF3_BEV2>C:\Users\%ActualUserName%\Windata\HACKDEEZ\exports\DUMP_%RANDOM%.img
cls
echo complete, Press any key to go back
pause >nul
goto :main

