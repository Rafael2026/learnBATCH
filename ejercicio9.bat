@echo off

IF "%1" == "" (
  echo No has pasado nigún fichero como parámetro
)

ELSE (

  IF EXIST "%1" (
    echo el fichero %1 existe
  )

  ELSE (
    echo el fichero %1 no existe
  )
)
