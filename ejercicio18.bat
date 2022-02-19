@echo off

:inicio
cls

echo Pulse 1 "Opcion1"
echo Pulse 2 "Opcion2"
echo Pulse 3 "Salir"

choice /C 123 /M = "Que desea hacer? "

IF %ERRORLEVEL% == 1 (
    goto inicio
)

IF %ERRORLEVEL% == 2 (
    goto inicio
)

IF %ERRORLEVEL% == 3 (
    echo Saliendo...
    echo Adios!
)