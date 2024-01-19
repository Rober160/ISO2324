#!/bin/bash
#
#Ejercicio Agenda GitHub
#Autor: Roberto Negrete García
#Fecha: 17/01/24
clear

while true ; do
	echo "a-Añadir una entrada"
	echo "b-Buscar un dni"
	echo "c-Ver la agenda completa"
	echo "d-Eliminar todas las entradas de la agenda"
	echo "e-Finalizar"
		read -p "Eliga una opción: " opt
	case $opt in
		a)
		echo
		echo "Has elegido la opción <Añadir una entrada>"
		echo
		read -n 10 -p "Necesito un DNI para dar de alta: " dni
		echo
			if grep "^$dni:" agenda.txt -r > /dev/null ; then
				echo
				echo "Ese DNI está dado de alta"
				echo
			else 
				read -p "Necesito un nombre: " nom
				read -p "Necesito los apellidos: " ape
				read -p "Necesito la localidad: " loc
				echo "$dni:$nom:$ape:$loc" >> agenda.txt
				echo
				echo "Dado de alta con éxito"
				echo
			fi
		;;
		b)
		echo "Has elegido la opción <Buscar un dni>"
		echo
		read -n 10 -p "Dame un DNI: " dni_1
		name=$(grep "^$dni_1:" agenda.txt | cut -d ":" -f 2)
		ap=$(grep "^$dni_1:" agenda.txt | cut -d ":" -f 3)
		loca=$(grep "^$dni_1:" agenda.txt | cut -d ":" -f 4)
			if grep "^$dni_1:" agenda.txt -r > /dev/null ; then
				echo
				echo "La persona con DNI número $dni_1 es: $name $ap, y vive en $loca"
				echo
			else
				echo
				echo "Error"
				echo
			fi
		;;
		c)
		echo "Has elegido la opción <Ver la agenda completa>"
			if [ -s agenda.txt ]; then
				echo
				cat agenda.txt
				echo
			else
				echo
				echo "Agenda vacía"
				echo
			fi
		;;
		d)
		echo "Has elegido la opción <Eliminar todas las entradas de la agenda>"
			echo "" > agenda.txt
			echo
			echo "Contenido borrado"
			echo
		;;
		e)
		echo "Has elegido Finalizar"
		break
		;;
		*)
		exit
		;;
	esac
done
