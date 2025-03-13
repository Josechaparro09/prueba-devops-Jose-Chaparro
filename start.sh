#!/bin/bash
 
docker stop prueba-devops-app 2>/dev/null

docker rm prueba-devops-app 2>/dev/null
 
echo "🚀 Construyendo la imagen de Docker..."

docker build -t prueba-devops-app .
 
echo "📦 Ejecutando el contenedor..."

docker run -d -p 5000:5000 -v $(pwd)/logs:/logs --name prueba-devops-app prueba-devops-app
 
echo "✅ La aplicación está corriendo en http://localhost:5000/"

 