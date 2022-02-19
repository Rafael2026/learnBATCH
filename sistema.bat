@echo off

REM a) Actualizar y visualizar la fecha del sistema
REM b) Visualizar la ip del sistema
REM c) Visualizar la hora del sistema
REM d) Analizar los problemas del disco duro
REM e) Salir

choice /C ABCDE /M = "Escoge opcion? "

IF %ERRORLEVEL% == 1 (
    date
)

IF %ERRORLEVEL% == 2 (
    ipconfig
)

IF %ERRORLEVEL% == 3 (
    time /t
)

IF %ERRORLEVEL% == 4 (
    chkdsk C:\
)

echo "ADIOS. Hemos terminado"