@echo off

REM a) UTILIDADES DEL SISTEMA
REM b) Utilidades de ficheros
REM c) Salir al S.O.

choice /C ABC /M = "Elige opcion? "

IF %ERRORLEVEL% == 1 (
    call sistema.bat
)

IF %ERRORLEVEL% == 2 (
    call ficheros.bat
)

echo ADIOS. Gracias por usar nuestros servicios