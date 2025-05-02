#!/bin/bash

# Instalar pacotes essenciais para compilação
sudo apt update
sudo apt install -y build-essential dkms git bc

# Baixar os headers do kernel 6.1 compatíveis
wget https://debian.sipwise.com/debian-security/pool/main/l/linux/linux-headers-6.1.0-31-amd64_6.1.128-1_amd64.deb
wget https://debian.sipwise.com/debian-security/pool/main/l/linux/linux-headers-6.1.0-31-common_6.1.128-1_all.deb

# Instalar os headers
sudo dpkg -i linux-headers-6.1.0-31-common_6.1.128-1_all.deb linux-headers-6.1.0-31-amd64_6.1.128-1_amd64.deb

# Clonar o repositório do driver RTL88x2bu
git clone https://github.com/morrownr/88x2bu-20210702

# Entrar na pasta do driver
cd 88x2bu*

# Compilar o driver
make

# Instalar o driver no sistema
sudo make install

# Ativar o módulo do driver
sudo modprobe 88x2bu

echo "✅ Driver RTL88x2bu instalado com sucesso!"
