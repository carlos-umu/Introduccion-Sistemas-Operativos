#!/bin/bash
 while read linea
 do
 	if ! test -z $linea
 	then

 	echo -n "$linea-> "
	
 	expresion=$(echo $linea | cut -f1 -d "=")
 	resultado=$(echo $linea | cut -f2 -d "=")
 	let resultadocorrecto=$expresion

		if test $resultado -eq $resultadocorrecto
 		then
 			echo "El resultado dado es correcto"
 		else
 			echo "El resultado dado no es correcto. El resultado correcto sería: $resultadocorrecto"
		 fi
 	fi
 done < $1
