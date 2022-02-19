@echo off

:inicio

cls

echo         MENU
echo ---------------------
echo a) Listar telefonos
echo b) Añadir un telefono
echo c) Buscar Persona
echo d) Buscar telefono
echo e) Borrar telefono
echo f) Vaciar agenda
echo g) salir

choice /C ABCDEFG /M "Elige una opcion: "

IF %ERRORLEVEL%==1 (
    (FOR /F "tokens=1-3 delims= " %c IN (agenda.txt) DO @echo %c %a %b)
)

IF %ERRORLEVEL%==2 (

    SET /P nombre="Introduce el nombre "
    SET /P apellido="Introduce el apellido "
    SET /P telefono="Introduce el telefono "

    echo %nombre% %apellido% %telefono% >>> agenda.txt
)

IF %ERRORLEVEL%==3 (
    SET /P nombrePersona="A quien busca"
    find %nombrePersona% agenda.txt
)

IF %ERRORLEVEL%==4 (
    SET /P numeroTelefono="Que numero de telefono quieres "
    find %numeroTelefono% agenda.txt
)

IF %ERRORLEVEL%==5 (
    SET /P telefonoIntroducido="Introduce un numero de telefono "
    find %telefonoIntroducido% agenda.txt < echo ""
)

IF %ERRORLEVEL% == 6 (
    echo "" > agenda.txt
)

REM Opcion g
IF %ERRORLEVEL% == 7 (
    goto fin
)

pause

goto inicio

:fin