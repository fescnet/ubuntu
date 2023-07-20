#!/bin/bash

# Atualizar os pacotes
sudo apt update

# Instalar o Redis Server
sudo apt install redis-server -y

# Verificar o status do serviço
# sudo systemctl status redis-server

# Configurar o Redis (opcional)
# sudo nano /etc/redis/redis.conf
# Reiniciar o serviço (se necessário)
# sudo systemctl restart redis-server

