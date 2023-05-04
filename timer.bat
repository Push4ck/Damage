@echo off
:Start
title timer
color A
echo Set Your Timer.
set /p time=

color 5
:loop

ping localhost -n 2 
set /a time=%time%-1
echo %time%
if %time% EQU 0 goto Timesup
goto loop

:Timesup
title Time Is Up

echo The Time Is up
pause
goto Exit
