#!/bin/bash

total=0
cat $1 | cut -f2 -d " " | while read linea 
do
	precio=$(echo $linea)
	let total+=$precio
done <$1
echo " El coste total de la compra realizada es $total euros"
