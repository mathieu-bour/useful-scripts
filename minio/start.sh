#!/usr/bin/env bash
docker run -p 9000:9001 \
  -d \
  --name=minio \
  -v minio_data:/data \
  -e "MINIO_ACCESS_KEY=accesskey" \
  -e "MINIO_SECRET_KEY=secretkey" \
  minio/minio server /data