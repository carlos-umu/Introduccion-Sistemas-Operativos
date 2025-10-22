#!/bin/bash
#$1 palabra
#resto ficheros regulares
#mostrando informacion por orden creciente
#numero total de apariciones al final



totalapariciones=0


palabra=$1
shift

for i in $@  #recorres todos los ficheros y filtras los holas y los escribes
do
	aparece=$(grep -woi $palabra $i |wc -l)
	echo "$i:$aparece"
done

#ahora habria que ordenarlos numericamente por la columna 2 qeu es el numero de veces que aparece

sort -t ":" -k2n |(
	while read linea
	do
	 $i=$(echo $linea | cut -d ":" -f1) # fichero en que aparece
	 aparece=$(echo $linea | cut -d ":" -f2)
	 let total+=$aparece
	  echo "La palabra \"$palabra\" aparece $apariciones veces en el fichero \"$fichero\""

	done;
	echo -e "Numero total de veces que aparece la palabra \"$palabra\" en el
                                         conjunto de ficheros es: $total\n\n"


)
