#!/bin/bash
echo "$docker_password" | docker login ghcr.io --username "$docker_username" --password-stdin
cd frontend
docker push "ghcr.io/$registry_name/go-app-ui:${GIT_COMMIT}" 
docker push "ghcr.io/$registry_name/go-app-ui:latest" &
wait