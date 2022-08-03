#!/bin/bash

read -p "Introduzca contenido para el archivo:  " contenido
control=''

cd
mkdir /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2
mkdir /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy
mkdir /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/empty
touch /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy/file1.txt
touch /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/empty/file2.txt

echo "Usted escribio:  " $contenido
echo "La longitud del contenido es: " ${#contenido}

if [ ${#contenido} -ne ${#control} ]
then
    echo $contenido >> /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy/file1.txt
    echo "El texto agregado al archivo file1.txt es: "
    cat /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy/file1.txt
else
    echo "Que me gusta bash!!!!" >> /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy/file1.txt
    echo "El texto agregado al archivo file21.txt es: "
    cat /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy/file1.txt
fi

while IFS= read -r line
do
    echo "$line" >> /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy/file2.txt
done < /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy/file1.txt

mv /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/dummy/file2.txt /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto1/foo2/empty/file2.txt

echo "Carpetas y archivos creados"