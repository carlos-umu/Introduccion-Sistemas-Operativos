#!/bin/bash
#preguntas.sh

#Introduce si o no
#-n quita el \n del final y asi escribe seguido
echo -n "Responde si o no: "
read respuesta  #lee entrada

#comprobar si respuesta es si o no

case $respuesta in
	[sS][iI])  #si SI sI Si     
	#si | Si | sI | SI
		echo Tu respuesta afirmativa
	;;
	[nN][oO])
		echo Tu respuesta afirmativa
	;;
	*)#default
		echo tu respuesta no es valida
	;;
esac
