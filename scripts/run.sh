#!/bin/bash

set -e

IMAGE_NAME="laboratorio-devops"
IMAGE_TAG="v1"
CONTAINER_NAME="laboratorio-devops"

echo "======================================="
echo "🚀 Iniciando container..."
echo "======================================="

# Remove o container antigo, se existir
docker rm -f ${CONTAINER_NAME} >/dev/null 2>&1 || true

# Executa um novo container
docker run -d \
  --name ${CONTAINER_NAME} \
  -p 8080:80 \
  ${IMAGE_NAME}:${IMAGE_TAG}

echo
echo "✅ Container iniciado com sucesso!"
echo

docker ps