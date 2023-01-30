@echo off
color 1e
cls
:Appstore
color 1e
cls
call C:\Data\Global_Config.cmd
Title Springroll Appstore v1.1
echo -------------------------------
echo             Featured Apps
echo -------------------------------
echo.
echo   (1) - Hackerminal
echo   (E) - Quit
echo.
CHOICE /C:1E /N /T:200 /D:1 >nul
if "%errorlevel%"=="1" (goto :HM1)
if "%errorlevel%"=="2" (goto call C:\Users\%ActualUserName%\Windata\Springroll\main.bat)
if "%errorlevel%"=="" (goto :Appstore)

:HM1
cls
Title Viewing Hackerminal..
if exist C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal goto 001E
cls
echo ---------------------------------
echo          Hackerminal
echo ---------------------------------
echo.
echo This app lets you use the CMD regardless of Restrictions
echo.
echo Author: TheAvacad0
echo Last Updated: 9/20/22
echo Current Version: 1.3
echo Catagory: Tools
echo A to Install, B to go back and C to refresh
CHOICE /C:ABC /N /T:300 /D:A >nul
if "%errorlevel%"=="1" (goto :HM-Install)
if "%errorlevel%"=="2" (goto :Appstore)
if "%errorlevel%"=="3" (goto :HO-1)

:001E
timeout /t 1 >nul
cls
Title Viewing Hackerminal..
cls
echo ---------------------------------
echo          Hackerminal
echo ---------------------------------
echo.
echo This app lets you use the CMD regardless of Restrictions
echo.
echo Author: Thunder
echo Last Updated: 9/20/22
echo Current Version: 1.2
echo Catagory: Tools
echo A to Update or B to go back
CHOICE /C:AB /N /T:300 /D:B >nul
if "%errorlevel%"=="1" (goto :HM-Install)
if "%errorlevel%"=="2" (goto :Appstore)

:HM-Install
:: Installation
cls
echo Please wait...
timeout /t 2 >nul
@RD /S /Q C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal
cls
md C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal
echo @echo off>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo color 1a>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo :Boot>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo cls>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo echo Hackerminal 1.2 (c) Thunder 2022>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo :type>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo Title Hackerminal 1.2>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo set /p "qcom=CMD>> ">>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo :run>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo cls>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo %%qcom%%>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
echo goto :type>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\launch.bat
cls
echo Updating Metadata
timeout /t 2 >nul
cls
echo @echo off>>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\meta.cmd
echo set "AppName=Hackerminal">>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\meta.cmd
echo set "AppVersion=1.2">>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\meta.cmd
echo set "AppDescription=Bypasses CMD Restrictions">>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\meta.cmd
echo set "Author=Thunder">>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\meta.cmd
echo set "Catagory=Developer">>C:\Users\%ActualUserName%\Windata\HACKDEEZ\Springroll\apps\Hackerminal\meta.cmd
cls
echo Finished! press any key to go back
pause >nul
cls
goto :AppStore
