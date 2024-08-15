#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT}" 
REPO="ghcr.io/$registry_name/"
echo "${REPO}"
docker build -t "${REPO}go-app-ui:latest" -t "${REPO}go-app-ui:$Tag" frontend/