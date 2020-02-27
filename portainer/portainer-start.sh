#!/usr/bin/env bash
VERSION=${1:-"latest"}
IMAGE="portainer/portainer:${VERSION}"

docker run -d \
  --name portainer \
  --restart always \
  -p 8000:8000 \
  -p 9090:9000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  "$IMAGE"
