#!bin/bash/


#filtros basicos 
echo 'Redirecciono meninfo y dmidecode a un archivo Filtros_Basicos.txt'

sudo cat /proc/meminfo |grep -i 'mentotal' > Filtros_Basicos.txt

sudo dmidecode -t chassis |grep -i 'manufacturer' >> Filtros_Basicos.txt

echo 'Imprimo la informacion de memoria total y el manufacturer '

cat Filtros_Basicos.txt


