#!/bin/bash

contador=0

while test $# -gt 0
do
	echo Parametro $contador: $1 	 #no son obligatorias las comillas 
	shift 				 #siempre usas el $1 por el shift
	let contador++ 			 #contador++
done
