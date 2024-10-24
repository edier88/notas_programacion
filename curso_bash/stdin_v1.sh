#!/bin/bash
# Programa para ingresar entradas

option=0
backupName=""

echo "Programa para ingresar valores"
echo -n "Ingresar una opcion: " # -n genera una nueva linea
read
option=$REPLY     # Guarda lo digitado en el STDIN en la variable 'option'
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY     # Guarda lo digitado en el STDIN en la variable 'backupName'
echo "Opcion: $option, backupName: $backupName"
