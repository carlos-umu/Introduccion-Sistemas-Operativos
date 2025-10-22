#!/bin/bash

if test $1 -le 200 -a $1 -ge 100
then
	let total=2*$1
	echo "El doble es: $total"
else
	echo "El numero tiene que estar enntre 100 y 200"
	exit 1
fi
