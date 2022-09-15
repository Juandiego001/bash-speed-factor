:: Creacion de script para conocer el tiempo de demora de los procesos
:: de factor por Juan Diego Cobo Cabal - 2195891.
@ECHO OFF

ECHO Creacion de script para conocer el tiempo de demora de los procesos
ECHO de factor por Juan Diego Cobo Cabal - 2195891.

SET START_TIME=%TIME%
ECHO TIMEPO DE INICIO: %START_TIME%
SET /A SEGUNDOS_TIEMPO_INICIO=%START_TIME:~6,+2%
:: ECHO %SEGUNDOS_TIEMPO_INICIO%

:: Salto de línea
ECHO:

:: Descripcion de ejecucion del factor
ECHO "------------------------------------------"
ECHO SE EMPIEZA A EJECUTAR EL FACTOR
ECHO "------------------------------------------"

:: Salto de línea
ECHO:

:: Empleo del factor para poder calcular los primos de los números
factor 33133186298394380609

:: Espera de 5 segundos (para pruebas)
:: TIMEOUT /t 5 > NUL

:: Descripcion de detenimiento de ejecucion del factor
ECHO "------------------------------------------"
ECHO SE DETIENE LA EJECUCION DEL FACTOR
ECHO "------------------------------------------"

:: Salto de línea
ECHO:

SET END_TIME=%TIME%
ECHO TIMEPO DE FIN: %END_TIME%
SET /A SEGUNDOS_TIEMPO_FINAL=%END_TIME:~6,+2%
:: ECHO %SEGUNDOS_TIEMPO_FINAL%

SET /A TOTAL_TIME= (%SEGUNDOS_TIEMPO_FINAL% - %SEGUNDOS_TIEMPO_INICIO%)*(%SEGUNDOS_TIEMPO_FINAL% - %SEGUNDOS_TIEMPO_INICIO%)

IF NOT TOTAL_TIME == 0 (
  TOTAL_TIME=%TOTAL_TIME%/(%SEGUNDOS_TIEMPO_FINAL% - %SEGUNDOS_TIEMPO_INICIO%)
  ECHO SE DEMORO MAS DE 0 SEGUNDOS
)

IF TOTAL_TIME == 0 ECHO SE DEMORO 0 SEGUNDOS

ECHO TIEMPO TRANSCURRIDO: %TOTAL_TIME% segundos


