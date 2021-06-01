@echo off

IF NOT "%1" == "" (

  IF NOT "%2" == "" (
    copy %1 %2
  )

  ELSE (
    echo "Necesito dos parametros"
  )
)

ELSE (
  echo "Necesito dos parametros"
)
