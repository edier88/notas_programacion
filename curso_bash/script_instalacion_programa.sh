#!/bin/bash
# Script para la instalacion de un paquete

opcion=0

# Funcion para instalar
instalar() {
	echo -e "\nVerificar instalacion"
	verifyInstall=$(which vlc)
	if [ $? -eq 0 ]; then  	### $? trae la salida del ultimo comando ejecutado, 
				# si el ultimo comando se ha ejecutado bien y dio una respuesta exitosa, $? devuelve 0,
				# en caso contrario devuelve 1

		echo -e "\nYa esta instalado"
	else
		read -s -p "ingresar password de sudo" passw
		echo "$passw" | sudo -S dnf update 		### -S usa como password el stdin (salida del echo, antes del pipe), en vez de la entrada de teclado
		echo "$passw" | sudo -S dnf -y install vlc
	fi
}

# Funcion para desinstalar
desinstalar() {
		read -s -p "ingresar password de sudo" passw
		echo -e "\n"
		echo "$passw" | sudo -S dnf -y --purge remove vlc
}


