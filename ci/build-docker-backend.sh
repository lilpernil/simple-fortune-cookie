#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}" 
cd backend
REPO="ghcr.io/$registry_name/"
echo "${REPO}"
docker build -t "${REPO}go-app:latest" -t "${REPO}go-app:1.0-$Tag" app/