#!/bin/bash
#corrigecuentas.sh

#expresion= resultado
#expresion de orden let
#resultado es numero entero

#¿QUE HACE?    IMPRIME CADA LINEA Y A CONTINUACION SI ES CORRECTO O NO EL RESULTADO

while read linea
do
	if ! test -z $linea  #si la linea no es 0
		then
			echo -n "$linea ->" # con la opcion -n omite el \n
			expresion=$(echo $linea | cut -d "=" -f1)
			resultado=$(echo $linea | cut -d "=" -f2)
			 let resultadocorrecto=$expresion
				if test $restultado -eq $resultadocorrecto 
				then
					echo "El resultado es correcto"
				else
					echo "El resultado no es correcto, debería ser : $resultadocorrecto"
				fi
	fi
done < $1
