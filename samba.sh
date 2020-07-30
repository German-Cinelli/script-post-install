#!/bin/bash

exist_user=$(cut -d ":" -f1 /etc/passwd | grep -wi "usuario" );

clear
if [ "$exist_user" == "" ]
then
    echo -e "\n\e[0;036m [x] Para configurar samba necesita crear el usuario [OPCION 3]\e[0m";
    sleep 4;
else
    mkdir /home/usuario/Escritorio/Compartida
    sudo chown -R usuario /home/usuario/Escritorio/Compartida
    sudo chmod 777 -R /home/usuario/Escritorio/Compartida
    sudo touch /etc/libuser.conf;
    sudo -H system-config-samba;
    echo -e "\e[0;32m> Volviendo al menu. \e[0m"
    sleep 2;
fi