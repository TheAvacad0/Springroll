@echo off
cls
color 
0a
:Main
if exist C:\Data\verify goto :Alr
cls
:Real
echo Welcome to the HackDeez installer v1.6
echo This installer will Install HACKDEEZ Data and Springroll, Or Update an Existing Installation
echo Press any key to continue
pause >nul
cls
echo Press any key to start
pause >nul
cls
echo Please Wait...
cls
MD C:\Data
echo This is fake>C:\Data\verify
cls
Echo Please enter your Username (Windows Local):
Set /p "UsernameAC=Username: "
cls
MD C:\Users\%UsernameAC%\Windata\HACKDEEZ
cls
MD C:\Users\%UsernameAC%\AppData\SPRG
MD C:\Users\%UsernameAC%\Windata\HACKDEEZ\exports
cls
Echo file deployment complete Press any key to install SpringRoll
pause >nul
xcopy "C:\install\SpringRoll" "C:\Users\%UsernameAC%\Windata\HACKDEEZ\SpringRoll" /y
cls
echo call "C:\Users\%UsernameAC%\Windata\HACKDEEZ\Springroll\Springroll.exe">C:\Users\%ActualUserName%\Pictures\Springroll-Launcher.cmd
echo exit >>C:\Users\%UsernameAC%\Pictures\Springroll-Launcher.cmd
cls
echo Installation/Update Complete! (Shortcut is in the 'Pictures' Directory)
pause >nul
exit

:Alr
cls
Echo Press any key to Update, Close this Window to cancel
Pause >nul
goto :Real
exit