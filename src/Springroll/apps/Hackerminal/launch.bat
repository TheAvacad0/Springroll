@echo off
color 1a
:Boot
cls
echo Hackerminal 1.2 (c) Thunder 2022
:type
Title Hackerminal 1.2
set /p "qcom=CMD>> "
:run
cls
%qcom%
goto :type
