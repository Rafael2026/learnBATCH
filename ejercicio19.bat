@echo off

IF EXIST "%1" (
    MORE %1
)

ELSE (
    echo "El fichero %1 no existe"
)