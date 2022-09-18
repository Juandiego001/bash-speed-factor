#!/bin/bash

echo ------------------------------------------
echo PRESENTACION
echo ------------------------------------------
echo Creacion de script para conocer el tiempo de demora de los procesos
echo de factor por Juan Diego Cobo Cabal - Codigo de estudiante: 2195891 - Correo: juan_diego.cobo@uao.edu.co.

# Salto de línea
echo -e '\n'

# Tomando el número a evaluar
echo "Digite el número que desea probar: "
read numero

# Salto de línea
echo -e '\n'

START_TIME=$(date +"%T:%N")
echo TIMEPO DE INICIO: $START_TIME
SEGUNDOS_TIEMPO_INICIO=$(cut -c 7-8 <<< $START_TIME)
MICRO_SEGUNDOS_TIEMPO_INICIO=$(cut -c 10-11 <<< $START_TIME)
echo SEGUNDOS DE INICIO: $SEGUNDOS_TIEMPO_INICIO
echo MICRO SEGUNDOS DE INICIO: $MICRO_SEGUNDOS_TIEMPO_INICIO

# Salto de línea
echo -e '\n'

# Descripcion de ejecucion del factor
echo ------------------------------------------
echo SE EMPIEZA A EJECUTAR EL FACTOR
echo ------------------------------------------

# Salto de línea
echo -e '\n'

echo ------------------------------------------
echo RESULTADOS
echo ------------------------------------------

# Empleo del factor para poder calcular los primos de los números
factor $numero

# Espera de 5 segundos (para pruebas)
# TIMEOUT /t 5 > NUL

# Salto de línea
echo -e '\n'

# Descripcion de detenimiento de ejecucion del factor
echo ------------------------------------------
echo SE DETIENE LA EJECUCION DEL FACTOR
echo ------------------------------------------

# Salto de línea
echo -e '\n'

END_TIME=$(date +"%T:%N")
echo TIMEPO DE FIN: $END_TIME
SEGUNDOS_TIEMPO_FINAL=$(cut -c 7-8 <<< $END_TIME)
MICRO_SEGUNDOS_TIEMPO_FINAL=$(cut -c 10-11 <<< $END_TIME)
echo SEGUNDOS TIEMPO FINAL: $SEGUNDOS_TIEMPO_FINAL
echo MICROSEGUNDOS TIEMPO FINAL: $MICRO_SEGUNDOS_TIEMPO_FINAL

# Salto de línea
echo -e '\n'

TOTAL_TIME=$(echo "($SEGUNDOS_TIEMPO_FINAL - $SEGUNDOS_TIEMPO_INICIO) * ($SEGUNDOS_TIEMPO_FINAL - $SEGUNDOS_TIEMPO_INICIO)" | bc)
echo TOTAL TIME: $TOTAL_TIME
MICRO_TOTAL_TIME=$(echo "($MICRO_SEGUNDOS_TIEMPO_FINAL - $MICRO_SEGUNDOS_TIEMPO_INICIO) * ($MICRO_SEGUNDOS_TIEMPO_FINAL - $MICRO_SEGUNDOS_TIEMPO_INICIO)" | bc)
echo MICRO TOTAL TIME: $MICRO_TOTAL_TIME

# Condicionales del tiempo en segundos
if [ $TOTAL_TIME -gt  0 ]; then 
	TOTAL_TIME=$(echo "$TOTAL_TIME/($SEGUNDOS_TIEMPO_FINAL - $SEGUNDOS_TIEMPO_INICIO)" | bc) 
fi

if [ $TOTAL_TIME -gt 0 ]; then 
	echo SE DEMORO MAS DE 0 SEGUNDOS
fi

# Condicionales del tiempo en microsegundos
if [ $MICRO_TOTAL_TIME -gt  0 ]; then 
	MICRO_TOTAL_TIME=$(echo "$MICRO_TOTAL_TIME/($MICRO_SEGUNDOS_TIEMPO_FINAL - $MICRO_SEGUNDOS_TIEMPO_INICIO)" | bc) 
fi

if [ $MICRO_TOTAL_TIME -gt 0 ]; then 
	echo SE DEMORO MAS DE 0 MICRO SEGUNDOS
fi

# Salto de línea
echo -e '\n'

if [ $TOTAL_TIME -gt 0 ]
then
  echo SE DEMORO $TIME_TOTAL SEGUNDOS con $MICRO_SEGUNDOS_TIEMPO_FINAL microsegundos
fi

echo TIEMPO TRANSCURRIDO '(en segundos)': $TOTAL_TIME segundos
echo TIEMPO TRANSCURRIDO '(en microsegundos)': $MICRO_TOTAL_TIME microsegundos

# Salto de línea
echo -e '\n'


