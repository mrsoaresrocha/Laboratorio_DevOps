#!/bin/bash

set -e

IMAGE_NAME="laboratorio-devops"
IMAGE_TAG="v1"

echo "======================================="
echo "🐳 Construindo imagem Docker..."
echo "======================================="

docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .

echo
echo "✅ Build concluído com sucesso!"

docker images | grep ${IMAGE_NAME}