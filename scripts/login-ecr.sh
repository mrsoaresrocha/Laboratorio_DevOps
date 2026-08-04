#!/bin/bash

set -e

AWS_REGION="us-east-2"
AWS_ACCOUNT_ID="905179308647"

echo
echo "===================================="
echo "🔐 Login no Amazon ECR"
echo "===================================="

aws ecr get-login-password --region ${AWS_REGION} \
| docker login \
--username AWS \
--password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com

echo
echo "✅ Login realizado com sucesso!"