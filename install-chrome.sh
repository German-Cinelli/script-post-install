#!/bin/bash

system_architecture=$(uname -m)

#CHROME
if [ $system_architecture = "x86_64" ]; then

    wget /home/ceip/Descargas https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
    dpkg -i /home/ceip/Descargas/google*;
    
else

    apt-get install chromium-browser -y;

fi

echo -e -n "\e[0;32m> Accion finalizada. Presione ENTER para continuar\e[0m"
read n