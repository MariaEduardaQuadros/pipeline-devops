#!/bin/bash

# Entrar na pasta do projeto
cd /mnt/c/Users/DUDA/Desktop/pipeline-devops

# Construir imagem
docker build -t pipeline-devops-app .

# Parar e remover container antigo
docker stop pipeline-devops-container || true
docker rm pipeline-devops-container || true

# Rodar container novo
docker run -it --name pipeline-devops-container pipeline-devops-app
