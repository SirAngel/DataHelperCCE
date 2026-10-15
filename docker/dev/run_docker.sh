#!/bin/bash

# Elimina contenedor anterior si existe
docker rm -f code-server 2>/dev/null || echo "No había contenedor anterior."

# Ejecuta contenedor montando la carpeta del host
docker run -d \
  --name code-server \
  -p 8080:8080 \
  -v /home/ubuntu/vsc_test:/home/ubuntu/DataHelperCCE \
  -e PASSWORD=password \
  vsc-python
