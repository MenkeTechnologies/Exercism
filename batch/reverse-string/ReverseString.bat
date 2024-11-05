@echo off
setlocal enabledelayedexpansion

set "str=%~1"
set "rev="

setlocal enabledelayedexpansion

set num=0

:LOOP
call set tmpa=%%str:~%num%,1%%%
set /a num+=1
if not "%tmpa%" equ "" (
set rev=%tmpa%%rev%
goto LOOP
)

echo %rev%
