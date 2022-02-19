@echo off

echo MENU
echo ...........

echo a) Mostrar el listado del contenido del escritorio
echo b) Mostrar el listado del contenido del directorio actual
echo c) Mostrar el listado con el contenido del directorio raíz

choice /C ABC /M "Que opcion eliges? "

IF %ERRORLEVEL% == 1 (
    dir %HOMEPATH%\Desktop
)

IF %ERRORLEVEL% == 2 (
    dir
)

IF %ERRORLEVEL% == 3 (
    dir c:\
)