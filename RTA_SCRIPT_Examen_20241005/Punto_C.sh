#!/bin/bash

#permisos 
#Genero la variable HASH con la contrase;a encriptada

HASH=$(sudo grep $(whoami) /etc/shadow |awk -F':'{print $2}')

sudo useradd -m -p "${HASH}" -G p1c1_2024_A1 p1c1_2024_gAlumno
sudo useradd -m -p "${HASH}" -G p1c1_2024_A2 p1c1_2024_gAlumno
sudo useradd -m -p "${HASH}" -G p1c1_2024_A3 p1c1_2024_gAlumno
sudo useradd -m -p "${HASH}" -G p1c1_2024_P1 p1c1_2024_gProfesores

echo "listo creacion de usuarios y grupos y asignacion"

chmod -R  750 /Examenes-UTN/alumno_1
chmod -R  760 /Examenes-UTN/alummo_2
chmod -R  700 /Examenes-UTN/alumno_3

chmod -R  775 Examenes-UTN/profesores

echo "listo los permisos"

#valido desde cada usuario
su -c "whoami > /Examenes-UTN/alumno_1/validar.txt pc1c1_2024_A1
su -c "whoami > /Examenes-UTN/alumno_2/validar.txt pc1c1_2024_A2
su -c "whoami > /Examenes-UTN/alumno_3/validar.txt pc1c1_2024_A3
su -c "whoami > /Examenes-UTN/profesores/validar.txt pc1c1_2024_P1


echo "fin del punto C"
