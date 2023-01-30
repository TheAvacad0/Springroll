@echo off
cls
color 3f
:Launch
Title The Springroll Launcher v1.2
call C:\Data\Global_Config.cmd
cd C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps
cls
color 3f
Echo Welcome!
cls
Echo --------------------Apps---------------------
dir /a:d /b
echo =============================
echo Back - Return to Springroll
echo -----------------------------------------------
set /p "launchreq=App: "

if exist %launchreq% goto :itsreal

goto :NFound

:itsreal
color 3f
cls
call %launchreq%\meta.cmd
echo --------------------------- [%AppName% v%AppVersion%] ----------------------------------
echo =Description=
echo [ %AppDescription% ]
echo --------------------
echo Author: %Author%
echo Catagory: %Catagory%
echo Press B to go back, L to Launch, D to delete and R To Refresh Metadata
:Detect
CHOICE /C:BLRD /N /T:300 /D:R >nul
if "%errorlevel%"=="1" (goto :Launch)
if "%errorlevel%"=="2" (goto :Launchapp)
if "%errorlevel%"=="3" (goto :itsreal)
if "%errorlevel%"=="4" (goto :deleteapp)

:deleteapp
cls
color 0b
echo Are you sure you want to delete %AppName% (y/n?)
CHOICE /C:YN /N /T:300 /D:N >nul
if "%errorlevel%"=="1" (goto :deleteappconfirmed)
if "%errorlevel%"=="2" (goto :Launch)

goto :Launch

:deleteappconfirmed
echo Deleting %AppName%
timeout /t 3 >nul
@RD /S /Q %launchreq%
echo Sucessfully Deleted
pause >nul
goto :launch


:Launchapp
:glaunch
cls
echo launching \
echo launching {
echo launching /
echo launching -
echo launching \
echo launching }
echo launching 
echo launching -
echo launching \
echo launching {
echo launching /
echo launching -
echo launching \
echo launching }
echo launching /
echo launching -
cls
color 0a
:green
start %launchreq%\launch.bat
color 0a
echo Launched! 
echo Press any key to return to the launch menu
pause >nul
goto :Launch

:NFound
if ["%launchreq%"] == ["Back"] (Call "C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\Main.bat")
cls
echo We Coudn't find that app...
pause
goto :Launch
