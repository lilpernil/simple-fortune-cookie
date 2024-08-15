#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

build_backend() {
  echo "Building backend..."
  cd backend
  if go build; then
    echo "Backend build succeeded."
  else
    echo "Backend build failed!"
    exit 1
  fi
  cd ..
}

build_frontend() {
  echo "Building frontend..."
  cd frontend
  if go build; then
    echo "Frontend build succeeded."
  else
    echo "Frontend build failed!"
    exit 1
  fi
  cd ..
}

build_backend
build_frontend

echo "All builds succeeded."
