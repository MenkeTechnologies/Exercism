@echo off
setlocal enabledelayedexpansion

set "str=%~1"
set "rev="

if not defined str (
    exit /b
)

set i=0

:LOOP
call set tmpa=%%str:~%i%,1%%%
set /a i+=1

if not "%tmpa%" equ "" (
    set rev=%tmpa%%rev%
    goto LOOP
)

echo %rev%
