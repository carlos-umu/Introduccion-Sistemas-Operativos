#!/bin/bash


total=0

#comprobacion de parametros

if test $# -ne 1  # si el n de parametros no es uno
then
	echo Uso: $0 usuario >&2   #mensaje de error , para que salga por la salida de error
	exit 1
fi

#comprobacion si hay procesos en usuario
#q quit mensajes en grep      grep -qw ^alumno
# es lo mismo que redireccionar la salida de grep -w ^alumno > /dev/null
#si el numero de lineas wc-l es 0 no tiene procesos



if ! ps aux | grep -qw ^$1  #cuando la orden tiene procesos devuelve 0 y lo pone a 1 la exclamacion
then	# comprobar la orden y si es 0 el codigo devuelto se ejecuta
	echo "El usuario '$1' : no tiene procesos" >&2
	exit 2
fi

for i in $( ps aux | tail -n +2 | grep -w ^alumno |tr -s " "| cut -f6 -d " ")
do
	let total+=i
done

echo Memoria usada por el usuario "'$1'" : $total KIB   # PARA DESTACAR EL NOMBRE DE USUARIO
