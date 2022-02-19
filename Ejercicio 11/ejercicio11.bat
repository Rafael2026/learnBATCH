@echo off

IF NOT EXIST "%1" == "" (

  IF NOT EXIST "%2" == "" (
    copy %1, %2
  )

  ELSE (
    echo "Necesito dos parametros"
  )
)

ELSE (
  echo "Necesito dos parametros"
)
