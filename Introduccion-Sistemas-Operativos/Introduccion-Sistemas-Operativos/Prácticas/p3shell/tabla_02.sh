#!/bin/bash



if test  $1 -gt 0 -a  $1 -lt 10
then
	echo "TABLA DE MULTIPLICAR DEL $1"
echo "---------------------------"
for i in $(seq 1 1 10)
do
        let res=$1*$i
        echo " $1 * $i = $res"
done

else
	exit 1

fi
~                                                                               


~                                                                               
~                                                                               
~                  
