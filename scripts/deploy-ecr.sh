#!/bin/bash

set -e

AWS_REGION="us-east-2"
ACCOUNT_ID="905179308647"

IMAGE_NAME="laboratorio-devops"
IMAGE_TAG="v1"

ECR_URI="${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${IMAGE_NAME}"

echo "========================================"
echo "🚀 Deploy para Amazon ECR"
echo "========================================"

echo
echo "1️⃣ Login no Amazon ECR..."

aws ecr get-login-password --region ${AWS_REGION} | docker login \
--username AWS \
--password-stdin ${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com

echo
echo "2️⃣ Build da imagem..."

docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .

echo
echo "3️⃣ Criando TAG para o ECR..."

docker tag \
${IMAGE_NAME}:${IMAGE_TAG} \
${ECR_URI}:${IMAGE_TAG}

echo
echo "4️⃣ Enviando imagem..."

docker push ${ECR_URI}:${IMAGE_TAG}

echo
echo "========================================"
echo "✅ Deploy concluído!"
echo "========================================"

echo
echo "Imagem publicada em:"
echo "${ECR_URI}:${IMAGE_TAG}"