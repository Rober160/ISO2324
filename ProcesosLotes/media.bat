@echo off
REM Operación Media
REM Autor: Roberto Negrete García
REM Fecha:14-11-2023

set Valor1=%1
set Valor2=%2
set Valor3=%3

set /a Suma=%Valor1%+%Valor2%+%Valor3%
echo.
set /a Media=%Suma%/3
echo La media de %1, %2, %3 es %Media%