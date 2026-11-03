@echo off
title Iniciar Blog sha256.us (Astro + USWDS)
cd /d "%~dp0"

echo =======================================================
echo   Iniciando Servidor de Desarrollo - sha256.us
echo =======================================================
echo.
echo Abriendo el navegador en http://localhost:4321 ...
echo.

start "" "http://localhost:4321"
call npm.cmd run dev

pause

