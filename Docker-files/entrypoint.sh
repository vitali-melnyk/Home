#!/bin/bash
mkdir 1

if [ $? == 0 ]
then
  echo "Starting nginx"
  echo "<p>HELLO WORLD $MY_NAME FROM ENTRYPOINT</p>" > /usr/share/nginx/html/index.html
  nginx -g "daemon off;"
fi
