#!/bin/bash

# Atualiza o cache do apt-get
sudo apt-get update

# Instala pacotes de pré-requisitos
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

# Importa a chave GPG oficial do Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Adiciona o repositório oficial do Docker às fontes do apt
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Atualiza novamente o cache do apt-get
sudo apt-get update

# Instala o Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Adiciona o usuário ao grupo "docker"
sudo usermod -aG docker $USER

