#!/bin/bash
# Menu de opciones

opcion=0

echo "Menu de opciones"

while : 
do
	#Limpiar la pantalla
	clear
	#Desplegar el menu de opciones
	echo "____________________________________"
	echo "PROGRAMA DE EJEMPLO"
	echo "____________________________________"
	echo "           MENU PRINCIPAL           "
	echo "____________________________________"
	echo "1. Instalar"
	echo "2. Desinstalar"
	echo "3. Hacer respaldo"
	echo "4. Restaurar respaldo"
	echo "5. Salir"

# Leed los datos del usuario - capturar la informacion
read -n1 -p "Ingrese una opcion [1-5];" opcion

# Validar la opcion ingresada
case $opcion in
	1)
		echo "Instalar"
		sleep 3
		;;
	2)
		echo "Desinstalar"
		sleep 3 
		;;
	3)
		echo "Sacar resplado..."
		sleep 3
		;;
	4)
		echo "Restaurar respaldo..."
		sleep 3
		;;
	5)
		echo "salir del programa"
		exit 0
		;;
esac
done
