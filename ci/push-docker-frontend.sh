#!/bin/bash
echo "$docker_password" | docker login ghcr.io --username "$docker_username" --password-stdin
cd frontend
docker push "ghcr.io/$registry_name/go-app-ui:1.0-${GIT_COMMIT::8}" 
docker push "ghcr.io/$registry_name/go-app-ui:latest" &
wait