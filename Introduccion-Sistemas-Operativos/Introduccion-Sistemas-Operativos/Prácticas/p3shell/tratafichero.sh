#!/bin/bash


case $1 in
	*.txt)
		cat $1
		;;
	*.sh)
		bash $1
		;;
	*)
		echo "No sabe tratar el fichero"
		;;
esac
