@echo off

:inicio

cls

echo Pulse 1 "Opcion 1"
echo Pulse 2 "Opcion 2"
echo Pulse 3 "Salir"

choice /C 123 /M = "Que desea hacer"

IF %ERRORLEVEL% == 1 (
    goto inicio
)

IF %ERRORLEVEL% == 2 (
    goto inicio
)

echo Saliendo...
echo Adios!