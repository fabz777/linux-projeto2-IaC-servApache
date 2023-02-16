#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "Instalando o apache..."
apt install apache2 -y
echo "Instalando o unzip..."
apt-get install unzip -y
echo "Movendo para o diretório /tmp e baixando zip do site..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando o zip..."
unzip main.zip
cd linux-site-dio-main
echo "Copiando todos os arquivos descompactados para a pasta /var/www/html/ ... "
cp -R * /var/www/html/
