@echo off
REM Crear directorios dentro del directorio del usuario:dam, asir, daw, smr, ceti. Y subdirectorios.
REM
REM Autor:Roberto Negrete García
REM Fecha:13-11-2023

mkdir %userprofile%\asir\docs
mkdir %userprofile%\asir\pract
mkdir %userprofile%\asir\exam

mkdir %userprofile%\dam\docs
mkdir %userprofile%\dam\pract
mkdir %userprofile%\dam\exam

mkdir %userprofile%\daw\docs
mkdir %userprofile%\daw\pract
mkdir %userprofile%\daw\exam

mkdir %userprofile%\smr\docs
mkdir %userprofile%\smr\pract
mkdir %userprofile%\smr\exam

mkdir %userprofile%\ceti\docs
mkdir %userprofile%\ceti\pract
mkdir %userprofile%\ceti\exam

echo Directorios creados exitosamente.