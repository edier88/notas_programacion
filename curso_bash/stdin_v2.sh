#!/bin/bash
# Programa para ingresar entradas

option=0
backupName=""

echo "Programa para ingresar valores"
read -p "Ingresar una opcion: " option # guarda lo ingresado en la variable 'option'
read -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opcion: $option, backupName: $backupName"
