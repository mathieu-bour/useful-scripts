#!/usr/bin/env bash
VERSION=${1:-"5.7"}
IMAGE="mysql:${VERSION}"
MYSQL_ROOT_PASSWORD="salome3004"

docker run -d \
  --name mysql \
  -p 3306:3306 \
  -v mysql_data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD="$MYSQL_ROOT_PASSWORD" \
  "$IMAGE"
