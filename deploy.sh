#!/bin/bash
echo "Desplegando archivos a S3..."
aws s3 sync . s3://bucketact1-daniel \
  --exclude ".git/*" \
  --exclude "deploy.sh" \
  --exclude "*.json"
echo "Despliegue completado."
echo "URL: http://bucketact1-daniel.s3-website-us-east-1.amazonaws.com"
