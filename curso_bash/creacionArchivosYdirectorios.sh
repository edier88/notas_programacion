#!/bin/bash
# Creacion de directorios o archivos

echo "Creacion archivos o directorios. Como primer argumento ponga 'd' (directorio) o 'f' (archivo)"
echo "Como segundo argumento ponga el nombre del archivo o directorio"

if [ $1 = "d" ]; then
	mkdir -m 755 $2
	echo "Directorio creado correctamente"
	ls -ltr | grep -iz $2
elif [ $1 = "f" ]; then
	touch $2
	echo "Archivo creado correctamente"
	ls -la $2
else
	echo "No conozco esa opcion"
fi
