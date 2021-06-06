@echo off

:inicio

cls

echo Menu del fichero
echo ------------------
echo A. Visualizar el directorio de la unidad determinada
echo B. Visualizar el contenido de un fichero paginado
echo C. Renombrar un fichero
echo D. Copiar un fichero
echo E. Borrar varios ficheros
echo F. Salir al menu principal

choice /C ABCDEF /M "Elige opcion "

IF %ERRORLEVEL% == 1 (
  SET /P unidad = "Cual unidad? "
  dir %unidad%
)

IF %ERRORLEVEL% == 2 (
  SET /P fichero = "Cual fichero? "
  more %fichero%
)

IF %ERRORLEVEL% == 3 (
  SET /P fichero = "Cual fichero? "
  SET /P nuevofichero = "Que nuevo nombre quieres? "
  REN %fichero% %nuevofichero%
)

IF %ERRORLEVEL% == 4 (
  SET /P fichero = "Cual fichero? "
  SET /P ubicacion = "A donde? "
  copy %fichero% %ubicacion%
)

IF %ERRORLEVEL% == 5 (
  :borrar
  SET /P fichero = "Cual fichero? "
  del %fichero%
  CHOICE /C SN /M "Deseas continuar borrando? "

  IF %ERRORLEVEL% == 1 (
    goto borrar
  )
)

IF %ERRORLEVEL% == 6 (
  goto fin
)

pause

goto inicio

:fin