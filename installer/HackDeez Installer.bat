@echo off
cls
color 
0a
:Main
if exist C:\Data\Verify goto :Alr
cls
:Real
echo Welcome to the HackDeez installer v1.6
echo This installer will install HACKDEEZ Data and Springroll
echo Press any key to continue
pause >nul
cls
echo Press any key to start
pause >nul
cls
echo Jailbreaking...
cls
MD C:\Data
echo This is fake>C:\Data\verify
cls
Echo Please enter your Windows Username:
Set /p "UsernameAC=Username: "
cls
MD C:\Users\%UsernameAC%\Windata\HACKDEEZ
cls
MD C:\Users\%UsernameAC%\AppData\SPRG
cls
Echo file deployment complete Press any key to install SpringRoll
pause >nul
xcopy /i /d /f /s "C:\install\Springroll" "C:\Users\%UsernameAC%\Windata\HACKDEEZ\SpringRoll"
cls
echo Call "C:\Users\%UsernameAC%\Windata\HACKDEEZ\Springroll\Main.bat">C:\Users\%UsernameAC%\Pictures\Springroll-Launcher.cmd
echo exit >>C:\Users\%UsernameAC%\Pictures\Springroll-Launcher.cmd
cls
echo Installation Complete! Check the 'Pictures' Directory
pause >nul
exit

:Alr
Echo You don't need to run this installer twice
Pause >nul
exit