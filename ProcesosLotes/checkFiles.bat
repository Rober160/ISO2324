@echo off
REM 
REM Autor: Roberto Negrete García
REM Fecha:14-11-2023

:inicio
echo Tell me a name of a file:
set /p name=

if exist %name% (
goto Exist
) else (
goto notexist
)

:Exist
echo The File Exist
goto inicio
:notexist
echo Does not exist, I will create it
type nul > %name%
goto inicio