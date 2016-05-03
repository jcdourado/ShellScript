#!/bin/bash
echo "Serao instalados o PHP7 junto com o MySQL e o Apache HTTPd"
echo "Deseja continuar?"
read esc
  if [ $esc = "Yes" -o $esc = "yes" -o $esc = "Y" -o $esc = "y" ]; then
    sudo apt-get install git
    sudo apt-get install python-software-properties
    sudo add-apt-repository ppa:ondrej/php
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
    sudo apt-get update
    sudo apt-get purge php5-fpm -y
    sudo apt-get install php7.0 php7.0-fpm 
    sudo apt-get install libapache2-mod-php7.0
    sudo apt-get install php7.0-mysql -y
    sudo apt-get install sublime-text-installer
    apt-get --purge autoremove -y
    echo "Verificando se esta instalado..."
    php --version
 else
    echo "Opcao Nao escolhida!"
 fi
