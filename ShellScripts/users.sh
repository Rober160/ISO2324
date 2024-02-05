#!/bin/bash
# Entregable GITHUB ejercicio 4 USERS
#
# Autor: Roberto Negrete García
# Fecha: 04/02/2024
clear

hora=$(date +%H:%M)
dia=$(date +%d-%m-%Y)

user=$(cut -d ":" -f 1 /etc/passwd)
uid=$(cut -d ":" -f 3 /etc/passwd)


IFS=":"



if [ $# != 1 ]; then
	echo "Introducir solo UN parámetro"
	exit
fi



if [ $# == 0 ]; then

	uid2=1000
else
	uid2=$1
fi

echo "Informe de usuarios el día $dia a las $hora "

while read user x uid gid g home shell; do

	if [ $uid -ge $uid2 ];then

		echo $user - $uid
	fi


done </etc/passwd

num=$(cat /etc/passwd | wc -l)

echo "Total: $num usuarios"

echo "$dia - $hora - El usuario $USER solicitó un informe de usuarios." >> /tmp/logeventos
