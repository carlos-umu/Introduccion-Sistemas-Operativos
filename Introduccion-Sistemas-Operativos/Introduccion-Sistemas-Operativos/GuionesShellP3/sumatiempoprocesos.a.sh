#!/bin/bash


if test ! $# -eq 1
then
	echo " Uso: sumatiempoprocesos.a.sh fichero" >&2
	exit 1
fi

if test ! -f $1
then
	echo " Uso: sumatiempoprocesos.a.sh fichero" >&2
        exit 2
fi

if test ! -r $1
then
	echo " Uso: sumatiempoprocesos.a.sh fichero" >&2
        exit 3
fi

while read usuario
do

	if ! grep -q "^$usuario:" /etc/passwd
	then
		 echo "ERROR: El fichero $1 contiene al menos un usuario no valido:
 $usuario"
	 exit 4
	fi




done
