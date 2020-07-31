#!/bin/bash

exist_user=$(cut -d ":" -f1 /etc/passwd | grep -wi "usuario" );

clear

if [ "$exist_user" == "" ]
then
    sudo useradd -d /home/usuario -mk /etc/skel -s /bin/bash usuario;
    if [ $? == 0 ]
	then
		passwd usuario;
        echo -e "${GREEN}Usuario creado exitosamente."
        sleep 1
        echo -e "${WHITE}Ahora sin salir de esta terminal..."
        echo -e "${WHITE}Es necesario logease con ese usuario ${CYAN}desde otra terminal ${WHITE}ejecutando..."
        echo -e "${GREEN}> ${WHITE}sudo usuario"
        echo -e "${WHITE}Luego de logearse cerrar la terminal."
        echo -e -n "${WHITE}Una vez realizada dicha accion, presione ENTER para volver al menu y configurar samba"
        read n
	else
		echo -e "${RED}[x] ${WHITE}Se produjo un error inesperado al crear el usuario."
        sleep 3;
	fi
    
else
    echo -e "${RED}[x] ${WHITE}El usuario 'usuario' ya existe!"
    sleep 2;
fi