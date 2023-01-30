@echo off
color 2d
:Load
If Exist C:\Data\Verify goto :Setup
cls
Echo A Valid key couldn't be found...Please Use the HACKDEEZ Installer
pause >nul
exit

:Setup
Title Springroll Setup
cls
color f2
IF Exist C:\Data\Global_Config.cmd goto :BootMenu
cls
echo Let's get SpringRoll Setup!
pause
cls
Echo First, What is your Windows Username
set /p "UNE=Username: "
cls
Echo Next, What Nickname do you want?
set /p "ANV=Name: "
:Brodcast
cls
Echo Okay, Let's get this ready for you!
echo set "ActualUserName=%UNE%">>C:\Data\Global_Config.cmd
echo set "PersonName=%ANV%">>C:\Data\Global_Config.cmd
cls
call C:\Data\Global_Config
md C:\Users\%ActualUserName%\Windata\HACKDEEZ\exports
Echo Configuration Created!
pause
goto :BootMenu

:BootMenu
call C:\Data\Global_Config.cmd
copy "C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\resources\BootHax.bat" "C:\Users\%ActualUserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /y
cls
color 0e
Title Springroll v1.6.0
echo ---------------------Springroll CLA-----------------------
echo.
echo    (A) The Springroll Launcher
echo    (B) Info
echo    (C) Exit
echo    (D) Appstore
echo.
CHOICE /C:ABCD /N /T:300 /D:B >nul
if "%errorlevel%"=="1" (goto :LaunchLauncher)
if "%errorlevel%"=="2" (goto :Info)
if "%errorlevel%"=="3" (exit)
if "%errorlevel%"=="4" (call C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\resources\Appstore.cmd)

goto :BootMenu

:LaunchLauncher
cls
cd apps
call "C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\setlaunch.bat"
goto :BootMenu

:Info
Title SPRNGL Info
cls
color 0a
call C:\Data\Global_Config.cmd
echo ----Configuration----
echo Usernamme (PC): %ActualUserName%
echo Name: %PersonName%
echo Running v1.6.0
echo ---------------------
echo Changelog:
echo ---------------------
echo N/A
echo =====================
pause >nul
goto :BootMenu















