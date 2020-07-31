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

echo -e -n "${GREEN}Accion finalizada. Presione ENTER para continuar."
read n