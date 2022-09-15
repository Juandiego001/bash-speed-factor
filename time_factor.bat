@ECHO OFF
setlocal enableextensions enabledelayedexpansion
ECHO ------------------------------------------
ECHO PRESENTACION
ECHO ------------------------------------------
ECHO Creacion de script para conocer el tiempo de demora de los procesos
ECHO de factor por Juan Diego Cobo Cabal - Codigo de estudiante: 2195891 - Correo: juan_diego.cobo@uao.edu.co.

:: Salto de línea
ECHO:

SET START_TIME=%TIME%
ECHO TIMEPO DE INICIO: %START_TIME%
SET /A SEGUNDOS_TIEMPO_INICIO=%START_TIME:~6,+2%
SET /A MICRO_SEGUNDOS_TIEMPO_INICIO=%START_TIME:~9,+2%
:: ECHO %SEGUNDOS_TIEMPO_INICIO%
ECHO %MICRO_SEGUNDOS_TIEMPO_INICIO%

:: Salto de línea
ECHO:

:: Descripcion de ejecucion del factor
ECHO ------------------------------------------
ECHO SE EMPIEZA A EJECUTAR EL FACTOR
ECHO ------------------------------------------

:: Salto de línea
ECHO:

:: Empleo del factor para poder calcular los primos de los números
factor 33133186298394380609

:: Espera de 5 segundos (para pruebas)
:: TIMEOUT /t 5 > NUL

:: Salto de línea
ECHO:

:: Descripcion de detenimiento de ejecucion del factor
ECHO ------------------------------------------
ECHO SE DETIENE LA EJECUCION DEL FACTOR
ECHO ------------------------------------------

:: Salto de línea
ECHO:

SET END_TIME=%TIME%
ECHO TIMEPO DE FIN: %END_TIME%
SET /A SEGUNDOS_TIEMPO_FINAL=%END_TIME:~6,+2%
SET /A MICRO_SEGUNDOS_TIEMPO_FINAL=%END_TIME:~9,+2%
:: ECHO %SEGUNDOS_TIEMPO_FINAL%
ECHO %MICRO_SEGUNDOS_TIEMPO_FINAL%

:: Salto de línea
ECHO:

SET /A TOTAL_TIME=(%SEGUNDOS_TIEMPO_FINAL% - %SEGUNDOS_TIEMPO_INICIO%)*(%SEGUNDOS_TIEMPO_FINAL% - %SEGUNDOS_TIEMPO_INICIO%)
ECHO TOTAL TIME: %TOTAL_TIME%
SET /A MICRO_TOTAL_TIME=(%MICRO_SEGUNDOS_TIEMPO_FINAL% - %MICRO_SEGUNDOS_TIEMPO_INICIO%)*(%MICRO_SEGUNDOS_TIEMPO_FINAL% - %MICRO_SEGUNDOS_TIEMPO_INICIO%)/(%MICRO_SEGUNDOS_TIEMPO_FINAL% - %MICRO_SEGUNDOS_TIEMPO_INICIO%)
ECHO MICRO TOTAL TIME: %MICRO_TOTAL_TIME%

IF %TOTAL_TIME% NEQ 0 SET /A TOTAL_TIME=%TOTAL_TIME%/(%SEGUNDOS_TIEMPO_FINAL% - %SEGUNDOS_TIEMPO_INICIO%)
IF %TOTAL_TIME% NEQ 0 ECHO SE DEMORO MAS DE 0 SEGUNDOS

:: Salto de línea
ECHO:

IF %TOTAL_TIME% GTR 0 (
  ECHO SE DEMORO %TIME_TOTAL% SEGUNDOS con %MICRO_SEGUNDOS_TIEMPO_FINAL% microsegundos
)

ECHO TIEMPO TRANSCURRIDO (en segundos): %TOTAL_TIME% segundos
ECHO TIEMPO TRANSCURRIDO (en microsegundos): %MICRO_TOTAL_TIME% microsegundos

:: Salto de línea
ECHO:
endlocal
