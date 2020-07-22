#!/bin/bash
sed -i '/^EXPOSE 8000/'d containers/backend/Dockerfile
sed -i 's/COMPOSE_PROJECT_NAME=lesspass/COMPOSE_PROJECT_NAME=lesspass-qxzg/g'  containers/.env
sed -i 's/quay.io/${CONTAINER_DOMAIN}/g' containers/docker-compose.yml
sed -i 's/\/lesspass\/${CONTAINER_PATH}/g' containers/docker-compose.yml

sed -i 's/EXPOSE 80/EXPOSE 45629/g' packages/lesspass-site/Dockerfile
sed -i 's/listen       80;/listen       45629;/g' packages/lesspass-site/nginx.conf 



