#!/bin/bash

function setcolors {
	BLACK='033[0;30m'
	RED='\033[0;31m'
	GREEN='\033[0;32m'
	BROWN='\033[0;33m'
	BLUE='\033[0;34m'
	PURPLE='\033[0;35m'
	CYAN='\033[0;36m'
	YELLOW='\033[1;33m'
	WHITE='\033[1;37m'
	printf '\e[8;30;100t'
	clear
}

function menu {
    while [ $option!=5 ]
	do
		clear
		echo -e "${YELLOW}Menu"
		echo
		echo -e "${PURPLE}1) ${WHITE}Actualizar sistema"
		echo -e "${PURPLE}2) ${WHITE}Instalar programas"
		echo -e "${PURPLE}3) ${WHITE}Crear usuario 'usuario'"
		echo -e "${PURPLE}4) ${WHITE}Configurar Samba"
		echo -e "${PURPLE}5) ${WHITE}Instalar Chrome/Chromium"
		echo -e "${PURPLE}6) ${WHITE}Instalar Teamviewer"
		echo -e "${PURPLE}7) ${WHITE}Instalar Anydesk"
        echo -e "${PURPLE}8) ${WHITE}Info del sistema"
		echo -e "${PURPLE}9) ${WHITE}Salir"
		echo -e "${YELLOW}"
		read -p "Seleccione opcion: " option
		case $option in
			1) . update-system.sh
				;;
			2) . install-programs.sh
				;;
			3) . create-user.sh
				;;
			4) . samba.sh
				;;
			5) . install-chrome.sh
				;;
			6) . install-teamviewer.sh
				;;
			7) . install-anydesk.sh
				;;
            8) . neofetch
                echo -e -n "\n\e[0;32m>\e[0m" "Presione [ENTER] para continuar"
                read n
				;;
			9) 	clear
				exit
				;;
			*) echo -e "${RED}Opcion incorrecta!"
				sleep 1.5	;;
		esac
	done
}

setcolors
menu