#!/bin/bash

#EStructuras simetrica

echo "inicio de estructura"


sudo mkdir -p /Estructura_Asimetrica/{correo/{carteros_{1..10},cartas_{1..100}},clientes/cartas_{1..100}}

#hago el check tree $HOME/Estructura_Asimetrica/ --noreport | pr -T -s''-w 80 --column 4
 echo "fin listo el pollo"
tree $HOME/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
