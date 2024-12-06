@echo off
setlocal enabledelayedexpansion
set "x=%~1"
set "y=%~2"
set /a "distance=x*x+y*y"

set result=0

if %distance% LEQ 1 (
    set result=10
) else if %distance% LEQ 25 (
    set result=5
) else if %distance% LSS 100 (
    set result=1
)

echo %result%
