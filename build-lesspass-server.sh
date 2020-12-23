#!/bin/bash
#sed -i '/^EXPOSE 8000/'d containers/backend/Dockerfile
sed -i 's/COMPOSE_PROJECT_NAME=lesspass/COMPOSE_PROJECT_NAME=lesspass-qxzg/g'  containers/.env
sed -i 's/quay.io/'${CONTAINER_DOMAIN}'/g' containers/docker-compose.yml
sed -i 's/\/lesspass\//'${CONTAINER_PATH}'/g' containers/docker-compose.yml
echo "">> packages/lesspass-site/Dockerfile;echo "RUN sed -i 's/https:\/\/lesspass.com/https:\/\/qxzg.xyz/g' /usr/share/nginx/html/lesspass.min.js" >> packages/lesspass-site/Dockerfile
sed -i 's/EXPOSE 8000/EXPOSE 45628/g' containers/backend/Dockerfile
sed -i 's/EXPOSE 80/EXPOSE 45629/g' packages/lesspass-site/Dockerfile
sed -i 's/\"0.0.0.0:8000\"/\"0.0.0.0:45628\"/g' containers/backend/Dockerfile
sed -i 's/listen       80;/listen       45629;/g' packages/lesspass-site/nginx.conf

sed -i 's/\"backend\", \".lesspass.com\", //g' containers/backend/lesspass/settings.py
sed -i 's/lesspass.local/127.0.0.1/g' containers/backend/lesspass/settings.py
#sed -i 's/days=7/days=14/g' containers/backend/lesspass/settings.py
#sed -i 's/minutes=15/minutes=60/g' containers/backend/lesspass/settings.py

sed -i 's/\"EMAIL_USE_SSL\", default=False/\"EMAIL_USE_SSL\", default=True/g' containers/backend/lesspass/settings.py
sed -i 's/\"EMAIL_SUBJECT_PREFIX\", \"\[LessPass\] \"/\"EMAIL_SUBJECT_PREFIX\", \"\[qxzg`s LessPass\] \"/g' containers/backend/lesspass/settings.py
sed -i 's/default=25/default=465/g' containers/backend/lesspass/settings.py
sed -i 's/contact@lesspass.com/'${DEFAULT_FROM_EMAIL}'/g' containers/backend/lesspass/settings.py
sed -i 's/\"EMAIL_HOST\", \"localhost\"/\"EMAIL_HOST\", \"'${EMAIL_HOST}'\"/g' containers/backend/lesspass/settings.py
sed -i 's/\"EMAIL_HOST_USER\", \"\"/\"EMAIL_HOST_USER\", \"'${EMAIL_HOST_USER}'\"/g' containers/backend/lesspass/settings.py
sed -i 's/\"EMAIL_HOST_PASSWORD\", \"\"/\"EMAIL_HOST_PASSWORD\", \"'${EMAIL_HOST_PASSWORD}'\"/g' containers/backend/lesspass/settings.py

sed -i 's/https:\/\/lesspass.com/https:\/\/pass.qxzg.xyz/g' packages/lesspass-site/index.html
sed -i 's/https:\/\/lesspass.com/https:\/\/pass.qxzg.xyz/g' packages/lesspass-site/gulpfile.js
sed -i 's/https:\/\/lesspass.com/https:\/\/pass.qxzg.xyz/g' containers/backend/lesspass/settings.py 
