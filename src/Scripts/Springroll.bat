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
md C:\users\UNE\Windata\HACKDEEZ\exports
Echo Configuration Created!
pause
goto :BootMenu

:BootMenu
call C:\Data\Global_Config.cmd
copy "C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\resources\BootHax.bat" "C:\Users\%ActualUserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /y
cls
color 0e
Title Springroll v1.6.1
echo ---------------------Springroll CLA-----------------------
echo.
echo    (A) The Springroll Launcher
echo    (B) Info
echo    (C) Exit
echo    (D) Appstore
echo    (E) Tools
echo.
CHOICE /C:ABCDE /N /T:300 /D:B >nul
if "%errorlevel%"=="1" (goto :LaunchLauncher)
if "%errorlevel%"=="2" (goto :Info)
if "%errorlevel%"=="3" (exit)
if "%errorlevel%"=="4" (call C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\resources\Appstore.cmd)
if "%errorlevel%"=="5" (goto :Tools)

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
echo Running v1.6.1
echo ---------------------
echo Changelog:
echo ---------------------
echo Added Executable
echo =====================
pause >nul
goto :BootMenu

:Tools
cls
Title Extra tools
color f0
echo ---------------Tools-----------------
echo   (1) - Delete Springroll
echo   (2) - Change/Update Springroll Installation
echo   (3) - Go back
echo.
CHOICE /C:123 /N /T:300 /D:3 >nul
if "%errorlevel%"=="1" (call "C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\resources\tools\deleter.exe")
if "%errorlevel%"=="2" (call "C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\resources\tools\updater.bat")
if "%errorlevel%"=="3" (goto :BootMenu)
if "%errorlevel%"=="" (goto :Tools)















