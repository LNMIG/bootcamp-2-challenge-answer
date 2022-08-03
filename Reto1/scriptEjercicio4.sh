#!/bin/bash

read -p "Introduzca URL de pagina a descargar (sino ENTER): " URL
read -p "Introduzca palabra a uscar en informacion descargada: " palabra

control=''

if [ ${#URL} -eq ${#control} ]
then
    URL="https://es.wikipedia.org/wiki/DevOps"
    echo "Se descargara contenido de la pagina: " $URL
else
    echo "Se descargara contenido de la pagina: " $URL
fi

if [ ${#palabra} -eq ${#control} ]
then
    palabra="Patrick Debois"
fi

mkdir foo3
touch foo3/paginaCopiada.txt

curl --request GET $URL > foo3/paginaCopiada.txt -s


echo "La palabra buscada aparece en la linea: " 
grep --ignore-case --line-number "$palabra" foo3/paginaCopiada.txt | cut -d ':' -f 1
