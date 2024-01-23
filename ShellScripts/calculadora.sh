#!/bin/bash
#Ejercicio entregable GITHUB calculadora
#Autor: Roberto Negrete García
#Fecha: 23/01/24
clear

echo "Roberto Negrete García"

if [ $# != 2 ];then
	echo "Necesito DOS parámetros"
	exit
fi


obj=$2
cont=0


if [ -f $1 ];then
	echo "Existe el directorio $1"
	exit
else
	echo "Continua a la calculadora..."
fi
	echo "S (suma)"
	echo "R (resta)"
	echo "M (multiplicación)"
	echo "D (división)"
	echo "X (salir)"


while [ $cont -lt $obj ] ; do

	read -p "Operación Op1 Op2: " Op Op1 Op2

	echo $Op $Op1 $Op2 >> $1

	case $Op in

		S)

		suma=$(($Op1 + $Op2))
			echo "$Op1 + $Op2 = $suma"
			cont=$(($cont + 1))

		;;

		R)

		resta=$(($Op1 - $Op2))
			echo "$Op1 + $Op2 = $resta"
			cont=$(($cont + 1))

		;;

		M)

		mult=$(($Op1 * $Op2))
			echo "$Op1 * $Op2 = $mult"
			cont=$(($cont + 1))

		;;

		D)

		div=$(($Op1 / $Op2))
			echo "$Op1 / $Op2 = $div"
			cont=$(($cont + 1))

		;;

		X)
		echo "Saliendo de la calculadora"
		break
		;;

		*)
		echo "Error"
		;;

	esac

done

	echo "/Shellscript/$1"
	cat $1
