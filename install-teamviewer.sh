#!/bin/bash

system_architecture=$(uname -m)

#TEAMVIEWER
if [ $system_architecture = "x86_64" ]; then
    #if [$(which teamviewer = "");]; then
        #wget /home/ceip/Descargas https://download.teamviewer.com/download/linux/teamviewer_amd64.deb;
        #dpkg -i /home/ceip/Descargas/teamviewer;
    #else

    #fi

    wget /home/ceip/Descargas https://download.teamviewer.com/download/linux/teamviewer_amd64.deb;
    dpkg -i /home/ceip/Descargas/teamviewer;
    
else
    
    wget /home/ceip/Descargas https://download.teamviewer.com/download/linux/teamviewer_i386.deb;
    dpkg -i /home/ceip/Descargas/teamviewer*;
    
fi

echo -e -n "\e[0;32m> Accion finalizada. Presione ENTER para continuar\e[0m"
read n