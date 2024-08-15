#!/bin/bash
echo "$docker_password" | docker login ghcr.io --username "$docker_username" --password-stdin
cd backend
docker push "ghcr.io/$registry_name/go-app:${GIT_COMMIT}" 
docker push "ghcr.io/$registry_name/go-app:latest" &
wait