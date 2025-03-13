#!/bin/bash

# Construir la imagen Docker
docker build -t prueba-devops-app .

# Crear directorio de logs si no existe
mkdir -p logs

# Detener y eliminar el contenedor si ya existe
docker stop prueba-devops-container 2>/dev/null
docker rm prueba-devops-container 2>/dev/null

# Ejecutar el contenedor
docker run -d \
    --name prueba-devops-container \
    -p 5000:5000 \
    -v "$(pwd)/logs:/logs" \
    prueba-devops-app

echo "Contenedor iniciado. La aplicación está disponible en:"
echo "http://localhost:5000 - Mensaje de bienvenida"
echo "http://localhost:5000/devops - Mensaje de DevOps"
