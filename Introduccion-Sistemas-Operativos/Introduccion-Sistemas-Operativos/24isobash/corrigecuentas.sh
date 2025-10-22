#!/bin/bash


while read linea
do
	if ! test -z $linea
	then
	operando=$(echo $linea | cut -f1 -d "=")
	res=$(echo $linea | cut -f2 -d "=")
	let resultadoT=$operando

		if test $res -eq $resultadoT
		then
			echo "$operando=$res -> El resultado dado es correcto"
		else
			echo "$operando=$res -> El resultado dado no es correcto. El resultado correcto sería: $resultadoT"
		fi


	fi


done
