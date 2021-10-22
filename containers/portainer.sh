#!/usr/bin/env bash
docker pull portainer/portainer-ce:alpine
docker stop portainer
docker rm portainer
docker run -d \
  --name portainer \
  --restart always \
  -p 8000:8000 \
  -p 9090:9000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:alpine
