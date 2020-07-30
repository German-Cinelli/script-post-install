#!/bin/bash

system_architecture=$(uname -m)

#NEOFETCH
sudo apt install -y neofetch;

#SMBCLIENT
sudo apt install -y smbclient;

#SAMBA
sudo apt install -y samba;

#VLC
sudo apt install -y vlc;

#UNRAR
sudo apt install -y unrar;

#CUPS
sudo apt install -y cups*;

#gvfs
sudo apt install -y gvfs*;

#python
sudo apt install -y python-smbc;
sudo apt install -y python3-smbc;

#gestor de claves
sudo apt install -y install seahorse;

#sane
sudo apt install -y sane*;

#simply-scan
sudo apt install -y simple-scan;

#xsane
sudo apt install -y xsane;

#xsane
sudo apt install -y system-config-samba;

#CHROME
#TEAMVIEWER
if [ $system_architecture = "x86_64" ]; then
    #sudo wget -P /home/ceip/Descargas https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
    #sudo apt-get update
    #sudo dpkg -i /home/ceip/Descargas/google*;
    #wget -P /home/ceip/Descargas https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
    #sudo apt-get update
    #sudo dpkg -i /home/ceip/Descargas/teamviewer*;
else
    #sudo apt-get install chromium-browser -y;
    #sudo wget -P /home/ceip/Descargas https://download.teamviewer.com/download/linux/teamviewer_i386.deb;
    #sudo apt-get update
    #sudo dpkg -i /home/ceip/Descargas/teamviewer*;
fi

echo -e -n "\e[0;32m> Accion finalizada. Presione ENTER para continuar\e[0m"
read n