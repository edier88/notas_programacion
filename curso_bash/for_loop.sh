#!/bin/bash
# Ciclos FOR

array1=(1 2 3 4 5 6)

echo "Iterar en la lista de numeros"
for num in ${array1[*]}
do
	echo "numero: $num"
done

echo "Iterar en la lista de strings"
for nom in "marco" "pedro" "luis" "daniela"
do
	echo "nombres: $nom"
done

echo "Iterar en archivos"
for fil in *
do
	echo "nombre archivo a continuacion: $fil"
done

echo "Iterar utilizando comando"
for fil in $(ls)
do
	echo "nombre archivo: $fil"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
	echo "numero;$i"
done


# Para darle ping a varias IP's haciendo uso de un Ciclo For en la Terminal de Linux (en una sola línea)

for fil in {8.8.8.8,8.8.4.4}; do ping -c 2 "$fil"; done


