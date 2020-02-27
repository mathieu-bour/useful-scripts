#!/usr/bin/env bash
VERSION=${1:-"5-alpine"}
IMAGE="redis:${VERSION}"

docker run -d \
  --name redis \
  --restart always \
  -p 6379:6379 \
  -v redis_data:/data \
  "$IMAGE"
