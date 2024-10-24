#!/bin/bash
# Practica de opciones
# Para poner a funcionar el programa se puede poner por ejemplo: 'sh opcionesYparametros.sh opcion1 opcion2 -a'. Las opciones se ponen con guion

echo "Programa de practica de opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar valores"

while [ -n "$1" ] 
do
	case "$1" in
		-a) echo "-a opcion utilizada";;
		-b) echo "-b opcion utilizada";;
		-c) echo "-c opcion utilizada";;
		*) echo "$1 no es una opcion";;
	esac
	shift
done
