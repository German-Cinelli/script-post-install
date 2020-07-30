#!/bin/bash

sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -;
sudo echo "deb http://deb.anydesk.com/ all main" >> /etc/apt/sources.list;
sudo apt-get update;
sudo apt install -y anydesk;

echo -e -n "\e[0;32m> Accion finalizada. Presione ENTER para continuar\e[0m"
read n