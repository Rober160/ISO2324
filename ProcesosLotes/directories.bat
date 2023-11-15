@echo off
REM Crear directorios
REM Autor: Roberto Negrete García
REM Fecha:14-11-2023

echo Press 1 to make a file
echo Press 2 to see userprofile tree
echo Press 3 to see files .txt
echo Press 4 to create alfredoff, marinapg and ramonam directories
echo Press 5 to copy userprofile content to C:\CarpetaCopy
set /p option=

if %option% == 1 goto file
if %option% == 2 goto tree
if %option% == 3 goto txt
if %option% == 4 goto directories
if %option% == 5 goto copy

:file
echo Tell me a file name:
set /p filename=
echo Tell me a extension:
set /p extension=
echo Tell me the directory:
set /p direct=
type nul > %direct%\%filename%%extension%
goto fin

:tree 
tree %userprofile%
goto fin

:txt
dir *.txt
goto fin

:directories
mkdir alfredoff marinapg ramonam
goto fin

:copy 
xcopy %userprofile% C:\CarpetaCopy /e
goto fin

:fin
echo.
echo Done

