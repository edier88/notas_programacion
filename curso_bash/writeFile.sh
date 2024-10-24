#!/bin/bash
# Escribir en archivo

echo "Escribir en un archivo"

echo "Valores escritos con echo" >> $1

# Adicion multilinea
# Lo que significa la primera linea es: "ejecute 'cat' hasta el EOM (End Of Message) y guarde la salida en el archivo"
cat <<EOM >> $1
$2
EOM
