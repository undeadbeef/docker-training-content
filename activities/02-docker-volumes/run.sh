#!/bin/sh

for id in $(/usr/bin/seq 0 3) ; do
  nginx_port=$(expr 8000 + ${id})
  echo "<html><body><h1>Hello, world!</h1><p>This is nginx instance <strong>${id}</strong>, generated at $(/bin/date)</p></body></html>" > index_${id}.html
  echo -n "* Spawning nginx docker instance #${id}: "
  /usr/bin/docker run --rm --detach --publish "${nginx_port}:80" \
    --volume "$(pwd)/index_${id}.html:/usr/share/nginx/html/index.html" \
    nginx:alpine
  echo "* Connect to nginx instance #${id} at http://127.0.0.1:${nginx_port}"
done
