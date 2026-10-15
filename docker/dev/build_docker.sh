#!/bin/bash

echo "Container build context : $(pwd)"
cd /home/ubuntu/DataHelperCCE  # Asegúrate de estar en la carpeta correcta
docker build -t vsc-python -f ./docker/dev/dockerfile .
