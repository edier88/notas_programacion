#!/bin/bash
# Practica de funciones

# funcion instalar
instalar() {
	echo "instalando"
}

# funcion desinstalar
desinstalar() {
	echo "desinstalando"
}

while :
do
	# Limpiar la pantalla
	clear
	# Poner menu
	echo "1. instalar"
	echo "2. desinstalar"
	echo "3. salir"

	read -n1 -p "ingrese una opcion [1-3]" opcion

	case $opcion in
		1)
			instalar
			sleep 3
			;;
		2)
			desinstalar
			sleep 3
			;;
		3)
			echo "hasta luego"
			sleep 1
			exit 0
			;;
	esac
done

