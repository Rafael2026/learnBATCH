@echo off

:inicio

cls

echo MENU DEL SISTEMA
echo ...................
echo A. Actualizar y visualizar la fecha del sistema
echo B. Visualizar las IPs del sistema
echo C. Visualizar la hora del sistema
echo D. Analizar los problemas del disco duro
echo E. Salir del menú principal


choice /C ABCDE /M "Escoge opcion "

IF %ERRORLEVEL% == 1 (
  date /t
)

IF %ERRORLEVEL% == 2 (
  ipconfig
)

IF %ERRORLEVEL% == 3 (
  time /t
)

IF %ERRORLEVEL% == 4 (
  chkdsk c:
)

IF %ERRORLEVEL% == 5 (
  goto fin
)

pause

goto inicio

:fin