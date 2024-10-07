#!/bin/bash

#Filtros  avanzados

cd /home/zaratul/repogit/UTNFRA_SO_1P2C_2024_ZaraTul/RTA_SCRIPT_Examen_20241005


cat << EOF >  Filtro_Avanzado.txt

Mi ip publica es: $(curl -s ifconfig.me)

Mi usuario es: $(whoami)

El hash de mi Usuario es: $(sudo grep $(whoami) /etc/shadow |awk -F ':' '{print $2}')

La URL de mi repo es: $(git remote get-url origin)

EOF
