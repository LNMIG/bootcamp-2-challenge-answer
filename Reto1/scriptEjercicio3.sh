#!/bin/bash

read -p "Introduzca contenido para el archivo:  " contenido
control=''

mkdir foo2
mkdir foo2/dummy
mkdir foo2/empty
touch foo2/dummy/file1.txt
touch foo2/empty/file2.txt

echo "Usted escribio:  " $contenido
echo "La longitud del contenido es: " ${#contenido}

if [ ${#contenido} -ne ${#control} ]
then
    echo $contenido >> foo2/dummy/file1.txt
    echo "El texto agregado al archivo file1.txt es: "
    cat foo2/dummy/file1.txt
else
    echo "Que me gusta bash!!!!" >> foo2/dummy/file1.txt
    echo "El texto agregado al archivo file21.txt es: "
    cat foo2/dummy/file1.txt
fi

while IFS= read -r line
do
    echo "$line" >> foo2/dummy/file2.txt
done < foo2/dummy/file1.txt

mv foo2/dummy/file2.txt foo2/empty/file2.txt

echo "Carpetas y archivos creados"