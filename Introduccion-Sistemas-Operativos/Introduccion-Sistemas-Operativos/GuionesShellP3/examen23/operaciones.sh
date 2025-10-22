#!/bin/bash


while read linea
do 
	
	for operador in + - / "%" "*"
	do
		if echo $linea | grep -q "$operador"
		then 
			operando1=$(echo $linea | cut -f1 -d "$operador")
			operando2=$(echo $linea | cut -f2 -d "$operador")
		fi
	done




	let resultado=$operando1$operador$operando2

	echo "$operando1 $operador $operando2 = $resultado"
done  $1


