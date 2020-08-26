#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="fairoza/capstone-app"


# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username fairoza
docker image tag capstone-app $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath