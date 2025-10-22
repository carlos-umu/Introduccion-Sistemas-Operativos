#!/bin/bash









#1)


contador=1
while  test $# -gt 0
do
  echo Parámetro $contador:  $1

   shift

  let contador=contador+1
done
echo 
echo


#2
test $# -eq 3
echo 
echo

#3
cadena="Hola mundo!"

echo $cadena

echo -n "El mensaje en \$mensaje es : $cadena ."
echo 
echo

#4

precio=180

echo $precio

echo -n El precio de esta ediciion de el quijote es de \$$precio
echo 
echo






#5)
case $1 in
	*[0]|*[5])
		echo $1 es multiplo de 5.
		;;
	*)
		echo $1 no es multiplo de 5.
		;;
esac
