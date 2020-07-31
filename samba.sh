#!/bin/bash

exist_user=$(cut -d ":" -f1 /etc/passwd | grep -wi "usuario" );

clear

if [ "$exist_user" == "" ]
then
    echo -e "${RED}[x] ${WHITE}Para configurar samba necesita crear el usuario ${CYAN}[OPCION 3]";
    sleep 3;
else
    mkdir /home/usuario/Escritorio/Compartida
    sudo chown -R usuario /home/usuario/Escritorio/Compartida
    sudo chmod 777 -R /home/usuario/Escritorio/Compartida
    sudo touch /etc/libuser.conf;
    sudo -H system-config-samba;
    echo -e "${WHITE}Volviendo al menu...";
    sleep 2;
fi