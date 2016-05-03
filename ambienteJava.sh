#!/bin/bash
echo "Instalacao do Java"
echo "Deseja prosseguir com a instalacao?"
read esc
   if [ $esc = "Yes" -o $esc = "yes" -o $esc = "Y" -o $esc = "y" ]; then
      sudo apt-get install openjdk-6-jre
      sudo apt-get install openjdk-7-jre
      sudo apt-get install openjdk-6-jdk
      sudo apt-get install openjdk-7-jdk
      sudo add-apt-repository ppa:webupd8team/java
      sudo apt-get update
      sudo apt-get install oracle-java8-installer
      echo "Checkando se foi instalado corretamente"
      java -version
      javac -version
   else
     echo "Opcao nao selecionada"
   fi

