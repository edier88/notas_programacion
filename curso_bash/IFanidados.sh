#!/bin/bash
# IF anidados

notaClase=0
continua=""

echo "Ejemplo IF Anidados"
read -n1 -p "Indique cual es su nota (1-10): " notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]; then
	echo "El alumno aprueba la materia"
	read -p "Va a continuar estudiando en el siguiente nivel? (s/n): " continua
	if [ $continua = "s" ]; then
		echo "Bienvenido al siguiente nivel"
	else
		echo "Gracias por trabajar con nosotros, mucha suerte !!!"
	fi
else
	echo "El alumno reprueba la materia"
fi

