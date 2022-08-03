#!/bin/bash

control=''

read -p "Introduzca nombre de carpeta a crear (sino ENTER): " nombreCarpeta
if [ ${#nombreCarpeta} -eq ${#control} ]
then
    nombreCarpeta="nueva_carpeta"
fi

read -p "Introduzca nombre de archivo a crear en carpeta llamada ${nombreCarpeta} (sino ENTER): " nombreArchivo
if [ ${#nombreArchivo} -eq ${#control} ]
then
    nombreArchivo="archivo_nuevo.txt"
fi

mkdir ${nombreCarpeta}
touch ${nombreCarpeta}/${nombreArchivo}

read -p "Introduzca nuevo nombre para el archivo llamdo ${nombreArchivo} (sino ENTER): " nuevoNmbre
if [ ${#nuevoNombre} -eq ${#control} ]
then
    nuevoNombre="archivo_viejo"
fi

mv ${nombreCarpeta}/${nombreArchivo} ${nombreCarpeta}/${nuevoNombre}.txt

read -p "Ingrese un texto a agregar al archivo llamdo ${nuevoNombre} (sino ENTER): " textoAgregar
if [ ${#textoAgregar} -eq ${#control} ]
then
    textoAgregar="Nueva línea de texto"
fi

echo ${textoAgregar} >> ${nombreCarpeta}/${nuevoNombre}.txt

chmod a=rwx ${nombreCarpeta}/${nuevoNombre}.txt
cd ${nombreCarpeta}
ls -l

cd ..
ln ${nombreCarpeta}/${nuevoNombre}.txt enlace.ln
rm -r ${nombreCarpeta}