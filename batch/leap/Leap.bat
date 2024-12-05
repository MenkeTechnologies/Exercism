@echo off
setlocal enabledelayedexpansion

set "year=%~1"
set "result=0"

set /a "_div4=year %% 4,_div100 = year %% 100,_div400 = year %% 400"
if %_div4% equ 0 ( if %_div100% neq 0 ( set result=1 ) else if %_div400% equ 0 ( set result=1) )

echo %result%
