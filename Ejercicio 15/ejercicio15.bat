@echo off

cls

IF "%1" == "" (

  echo No se ha introducido parametros

) ELSE (

  IF EXIST "%1" (
    copy %HOMEPATH%\%1
  )

  ELSE (
    echo El fihero %1 no existe
  )
)
