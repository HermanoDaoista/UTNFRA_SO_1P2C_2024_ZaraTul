#!/bin/bash


lsblk #listo mis dispositivos

sudo fdisk -l /dev/sdb #me aseguro que sea el que quiero

echo "Empieza la particion"

sudo fdisk /dev/sdb

echo "veo si funciono"

sudo fdisk -l /dev/sdb

#Formatear las dies unidades

sudo mkfs.ext4 /dev/sdb1
sudo mkfs.ext4 /dev/sdb2
sudo mkfs.ext4 /dev/sdb3
sudo mkfs.ext4 /dev/sdb5
sudo mkfs.ext4 /dev/sdb6
sudo mkfs.ext4 /dev/sdb7
sudo mkfs.ext4 /dev/sdb8
sudo mkfs.ext4 /dev/sdb9
sudo mkfs.ext4 /dev/sdb10
sudo mkfs.ext4 /dev/sdb11

#Version Ferrer
#sudo fdisk -l /dev/sdb | grep sdb |egrep -v 'Disk|sdb4' |awk '{print "sudo mkfs.ext4 "$1}' |/bin/bash
sudo mount /dev/sdb1 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdb2 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdb3 /Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdb5 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdb6 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdb7 /Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdb8 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdb9 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdb10 /Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdb11 /Examenes-UTN/profesores

echo "fin del punto B"

