#!/bin/bash


echo "TABLA DE MULTIPLICAR DEL $1"
echo "---------------------------"
for i in $(seq 1 1 10)
do
	let res=$1*$i
	echo " $1 * $i = $res"
done
