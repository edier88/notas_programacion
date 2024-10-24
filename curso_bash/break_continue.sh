#!/bin/bash
# Break and continue

echo "Break and Continue"

for fil in $(ls)
do
	for nombre in {1..4}
	do
		if [ $fil = "variables_fuente.sh" ]; then
			break;
		elif [[ $fil == 4* ]]; then
			continue;
		else
			echo "Nombre archivo: $fil _ $nombre"
		fi
	done
done
