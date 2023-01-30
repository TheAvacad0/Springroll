@echo off
:Main
Title BootHax
color 1b
echo ------------SPRG BootStrap v1.0-----------------------
echo             (A) - Launch Springroll
echo             (B) - Close this menu
echo --------------------------------------------------
echo.
CHOICE /C:AB /N /T:200 /D:A >nul
if "%errorlevel%"=="1" (goto :SPGLaunch)
if "%errorlevel%"=="2" (exit)
if "%errorlevel%"=="" (goto :Main)

:SPGLaunch
cls
call C:\Data\Global_Config.cmd
start C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\Main.bat
exit

:: Made By TheAvacado11

