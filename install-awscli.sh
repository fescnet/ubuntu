#!/bin/bash

# Atualizar os pacotes
sudo apt update

# Instalar as dependências necessárias
sudo apt install python3-pip -y

# Instalar o AWS CLI usando o pip
sudo pip3 install awscli

