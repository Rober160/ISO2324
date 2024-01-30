#!/bin/bash
#Entregable GITHUB
#
#Autor:Roberto Negrete García
#Fecha:29/01/24
clear

fic=$1
dir=$2

if [ $# != 2 ];then
echo "Necesito 2 parámetros!"
exit
else
echo "Continuando con el script..."
fi

	if [ -f $fic ];then
	echo "El fichero existe..."
	exit
	fi

	if [ -d $dir ];then
	echo "El directorio existe, continuando..."
	else
	echo "El directorio no existe..."
	exit
	fi

	if [ -z $dir ];then
	echo "El directorio está vacío..."
	exit
	else
	echo "Continuando con el script..."
	fi

echo "Roberto Negrete García"

directorio=$(ls $dir/*.txt)
for i in $directorio; do

	if [ -f $i ];then
	lineas=$(cat $i | wc -l)

		if [ $lineas -ge 5 ];then
		#Parte3
		echo $i
		touch $dir/$fic
		echo $i >> $dir/$fic

		#Parte4
		palabras=$(cat $dir/$fic | wc -w)
		echo "El fichero tiene $palabras palabras" > $dir/$fic.q
		cat $dir/$fic >> $dir/$fic.q

		fi
	fi
done

num=$(cat $dir/$fic | wc -l)
echo $num >> $dir/$fic

