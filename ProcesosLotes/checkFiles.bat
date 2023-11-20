@echo off
REM 
REM Autor: Roberto Negrete García
REM Fecha:14-11-2023

echo Tell me a name of a file:
set /p name=

if exist %name% (echo "File exists") else (goto notexist)

:notexist
echo The file does not exist, tell me a name for the file:
set /p file= 

if exist %file% (echo "File exist") else (type nul > %file%)