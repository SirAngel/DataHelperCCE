#!/bin/bash

# Elimina contenedor anterior si existe
docker rm -f code-server 2>/dev/null || echo "No había contenedor anterior."

docker run -d \
  --name code-server \
  -p 8080:8080 \
  -p 8000:8000 \
  -v /home/ubuntu/DataHelperCCE:/home/ubuntu/DataHelperCCE \
  -e PASSWORD=password \
  vsc-python

