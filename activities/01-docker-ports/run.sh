#!/bin/sh

nginx_port=$(/usr/bin/od -d /dev/urandom -N2 | /usr/bin/head -1 | /usr/bin/awk '{ print $2; }')
docker_id=$(/usr/bin/docker run --rm --detach --publish ${nginx_port}:80 nginx:alpine)

echo "* Docker container ID ${docker_id}"
echo "* nginx listening on http://127.0.0.1:${nginx_port}"