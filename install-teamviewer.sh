#!/bin/bash

system_architecture=$(uname -m)

#TEAMVIEWER
if [ $system_architecture = "x86_64" ]; then

    wget /home/ceip/Descargas https://download.teamviewer.com/download/linux/teamviewer_amd64.deb;
    dpkg -i /home/ceip/Descargas/teamviewer;
    
else
    
    wget /home/ceip/Descargas https://download.teamviewer.com/download/linux/teamviewer_i386.deb;
    dpkg -i /home/ceip/Descargas/teamviewer*;
    
fi

echo -e -n "${GREEN}Accion finalizada. Presione ENTER para continuar."
read n