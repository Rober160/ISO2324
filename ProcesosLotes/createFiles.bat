@echo off
REM 
REM Autor: Roberto Negrete García
REM Fecha:14-11-2023

echo Press 1 to make .txt
echo Press 2 to make .bat

set /p file=

if %file% == 1 goto .txt
if %file% == 2 goto .bat

:.txt
echo Tell me a name:
set /p name=
echo Tell me the directory
set /p rute=
type nul > %rute%\%name%.txt
goto fin

:.bat
echo Tell me a name:
set /p name=
echo Tell me the directory
set /p rute=
type nul > %rute%\%name%.bat
goto fin

:fin
echo.
echo Done