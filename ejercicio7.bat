@echo off

REM Se nos tiene que pasar un fichero como parámetro %1

IF "%1" == "" (
  echo Por favor, define un fichero para copiar.
)

ELSE (

  IF EXIST "%1" (
    type %1
    pause
    copy %1 %HOMEPATH%\%1
  )

  ELSE (
    echo El fichero que has pasado no existe
  )
)
