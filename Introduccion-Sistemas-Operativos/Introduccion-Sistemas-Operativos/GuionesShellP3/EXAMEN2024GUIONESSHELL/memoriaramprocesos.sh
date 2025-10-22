#!/bin/bash
#muestra toda la informacion de los procesoss
#columna 6 rss
#sumar todos los numeros de esa columna

#ps aux | tail -n +2 | tr -s " " | cut -f6 -d " " # tr es importante para que la repeticion de espacios sea uno solo

contador=0
for i in  $(ps aux | tail -n +2 | tr -s " " | cut -f6 -d " ")  # $() para que recorra los valores de esa orden
do	
	let contador+=i
done

echo "El espacio total es: $contador"
