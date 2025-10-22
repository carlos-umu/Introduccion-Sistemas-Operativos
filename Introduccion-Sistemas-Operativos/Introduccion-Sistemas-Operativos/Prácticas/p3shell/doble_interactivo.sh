#!/bin/bash

continuar="S"

while test $continuar = "S"
do
	echo "Introduce numero"
	read num
	let doble=$num*2
	echo "El doble de $num es $doble"
	echo
	echo "Desea continuar (S/N)"
	read continuar

done
