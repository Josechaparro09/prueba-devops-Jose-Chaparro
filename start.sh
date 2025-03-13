#!/bin/bash
 
# Detener y eliminar el contenedor si ya está en ejecución

docker stop prueba-devops-app 2>/dev/null

docker rm prueba-devops-app 2>/dev/null
 
# Construir la imagen

echo "🚀 Construyendo la imagen de Docker..."

docker build -t prueba-devops-app .
 
# Ejecutar el contenedor con mapeo de puertos y volumen para logs

echo "📦 Ejecutando el contenedor..."

docker run -d -p 5000:5000 -v $(pwd)/logs:/logs --name prueba-devops-app prueba-devops-app
 
echo "✅ La aplicación está corriendo en http://localhost:5000/"

 