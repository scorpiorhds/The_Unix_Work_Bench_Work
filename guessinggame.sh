#!/usr/bin/env bash

numero_de_archivos=$(find*-maxdepth 0 -type f|wc-l)

echo "intenta adivinar el numero de archivos existentes en el directorio actual?"

function revisar_respuesta {
	if [[ $1-gt $numero_de_archivos]]
	then
		echo "te excediste demasiado, intentalo nuevamente"
	elif [[ $1-lt $numero_de_archivos]]
	then
		echo "no, tenemos mas cantidad de archivos en el directorio actual, intenta adivinar nuevamente"
else
	echo "correcto, felicidades, acabas de adivinar el numero de archivos"
fi
}


while [[ !$user_guess -eq $numero_de_archivos]]
do
	read user_guess

check_answer $user_guess

done
