#!/bin/bash

system_architecture=$(uname -m)

#CHROME
if [ $system_architecture = "x86_64" ]; then

    wget /home/ceip/Descargas https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
    dpkg -i /home/ceip/Descargas/google*;
    
else

    apt-get install -y chromium-browser;

fi

echo -e -n "${GREEN}Accion finalizada. Presione ENTER para continuar."
read n