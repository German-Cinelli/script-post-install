#!/bin/bash

exist_user=$(cut -d ":" -f1 /etc/passwd | grep -wi "usuario" );

clear

if [ "$exist_user" == "" ]
then
    sudo useradd -d /home/usuario -mk /etc/skel -s /bin/bash usuario;
    passwd usuario;
    echo -e -n "\e[0;32m> Usuario creado exitosamente. \e[0m"
    sleep 1
    echo -e -n "\n\033[1;33m Ahora sin salir de esta terminal... \e[0m"
    echo -e -n "\n\033[1;33m Es necesario logease con ese usuario\033[0;32m desde otra terminal\033[1;33m con... \e[0m"
    echo -e "\n\e[0;32m > sudo usuario\e[0m"
    echo -e -n "\n\e[0;32m> Una vez realizada dicha accion, presione ENTER para volver al menu y configurar samba\e[0m"
    read n
else
    echo -e "\n\e[0;36m [x] El usuario 'usuario' ya existe!\e[0m"
    sleep 2;
fi