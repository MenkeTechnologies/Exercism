@echo off
set "input=%~1"
set "res="

SET /A number =%input% %% 3
if %number% == 0 set res=Pling

SET /A number =%input% %% 5
if %number% == 0 set res=%res%Plang

SET /A number =%input% %% 7
if %number% == 0 set res=%res%Plong

if [%res%]==[] set res=%input%
echo %res%
