#!/bin/bash

# Genero la variable HASH con la contraseña encriptada
HASH=$(sudo grep $(whoami) /etc/shadow | awk -F':' '{print $2}')

# Crear grupos
sudo groupadd p1c1_2024_gAlumno
sudo groupadd p1c1_2024_gProfesores

# Crear usuarios y asignarles grupos
sudo useradd -m -p "${HASH}" -G p1c1_2024_gAlumno p1c1_2024_A1
sudo useradd -m -p "${HASH}" -G p1c1_2024_gAlumno p1c1_2024_A2
sudo useradd -m -p "${HASH}" -G p1c1_2024_gAlumno p1c1_2024_A3
sudo useradd -m -p "${HASH}" -G p1c1_2024_gProfesores p1c1_2024_P1

echo "Listo creación de usuarios y grupos y asignación."

# Asignar propietarios y grupos a los directorios antes de cambiar permisos
sudo chown p1c1_2024_A1:p1c1_2024_gAlumno /Examenes-UTN/alumno_1
sudo chown p1c1_2024_A2:p1c1_2024_gAlumno /Examenes-UTN/alumno_2
sudo chown p1c1_2024_A3:p1c1_2024_gAlumno /Examenes-UTN/alumno_3
sudo chown p1c1_2024_P1:p1c1_2024_gProfesores /Examenes-UTN/profesores

# Cambiar permisos
sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chmod -R 700 /Examenes-UTN/alumno_3
sudo chmod -R 775 /Examenes-UTN/profesores

echo "Listo los permisos."

# Validar desde cada usuario
su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c1_2024_A1
su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c1_2024_A2
su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c1_2024_A3
su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c1_2024_P1

echo "Fin del punto C."
