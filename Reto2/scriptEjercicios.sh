#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9
do
    touch /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv$i.txt
    chmod a-rwx /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv$i.txt
done

ls -l
echo "Primer paso terminado"
echo " "

chmod u=rwx,go= /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv1.txt
chmod u=rw,go= /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv2.txt
chmod a=rwx /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv3.txt
chmod u=rwx,g=rw,o=r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv4.txt
chmod u=rwx,g=r,o= /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv5.txt
chmod u=rx,g=rw,o=r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv6.txt
chmod u=r,g=,o=x /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv7.txt
chmod u=rw,g=r,o=r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv8.txt
chmod u=rw,g=rw,o=r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv9.txt

ls -l
echo "Segundo paso terminado"
echo " "


chmod o+r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv1.txt
chmod u-w /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv2.txt
chmod a-x /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv3.txt
chmod go-r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv4.txt
chmod g-r,o+wx /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv5.txt
chmod u+w,o-r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv6.txt
chmod u+w,g+x,o-x,o+w /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv7.txt
chmod u-rw,g-r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv8.txt
chmod u+rw,g+rw,o+r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv9.txt

ls -l
echo "Tercer paso terminado"
echo " "

chmod u+r /home/lnmig/Escritorio/bootcamp-2-challenge-answer/Reto2/archiv8.txt
ls -l
echo "Se cambian permisos de arch8,txt para poder commitear"
echo " "