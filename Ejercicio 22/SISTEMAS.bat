@echo off

:inicio

cls

echo MENU
echo .d

IF %ERRORLEVEL% == 1 (
  call SISTEMA.bat
)

IF %ERRORLEVEL% == 2 (
  call FICHERO.bat
)

IF %ERRORLEVEL% == 3 (
  goto fin
)

goto inicio

:fin

echo Adios. Gracias por utilizar nuestros servicios.