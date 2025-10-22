#!/bin/bash




#comprobar todos parametros correctos
#comprobar que hay almenos 2

#que n es un numero menor que el num parametros
#comprobar tienen permisos de lectura


# 1: El número mínimo de parámetros es 2.
# 2: El primer parametro deber ser un número natural positivo.
# 3: El primer parametro debe ser menor que el número total de parámetros.
# 4: El parámetro <fichero> debe ser el nombre de un fichero regular.
# 5: El parámetro <fichero> debe tener permiso de lectura


if test $# -lt 2 then
	echo "El numero minimo de parametros es 2"
	echo "USO: catenisimo <numero> <fichero>..."
	exit 1 # para el codigo de error
fi

if ! echo $1 | grep -qx "[0-9]\+" then
	echo "El primer parametro debe ser un numero natural positivo(entero mayor que 0, sin signo)"
	echo "USO: catenisimo <numero> <fichero> ..."
	exit 2
fi


if test $1 -ge $# then
	echo "El primer parametro debe ser un numero menor que el numero de parametros"
	echo "Uso: catenisimo <numero> <fichero> ..."
	exit 3
fi



#comprobacion de ficheros
numero=$1
shift

for i in $@
do
	if test ! -f then  $i   # si no es valido como fichero
		echo "El parametro ’$f’ debe ser el nombre de un fichero regular" >&2
 		echo "USO: $0 <numero> <fichero>..." >&2
 		exit 4
	 fi
	if test ! -r $i then # que no tenga permiso de lectura
		echo "El fichero ’$f’ debe tener permiso de lectura" >&2
 		echo "USO: $0 <numero> <fichero>..." >&2
 		exit 5
 	fi

 done





#no loentiendo
fichero=${!numero}
echo "El contenido del fichero '$fichero' es :"
cat $fichero
