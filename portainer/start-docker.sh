#!/usr/bin/env bash
docker run -d \
  --name portainer \
  --restart always \
  -p 8000:8000 \
  -p 9090:9000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:2.0.0-alpine
