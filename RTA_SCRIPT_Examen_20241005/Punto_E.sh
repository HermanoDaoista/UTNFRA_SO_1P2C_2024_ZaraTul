#!/bin/bash


#filtros basicos 
echo 'Redirecciono meninfo y dmidecode a un archivo Filtros_Basicos.txt'

grep -i 'memtotal' /proc/meminfo > Filtros_Basicox.txt

sudo dmidecode -t chassis |grep -i 'manufacturer' >> Filtros_Basicox.txt

echo 'Imprimo la informacion de memoria total y el manufacturer '

cat Filtros_Basicox.txt


