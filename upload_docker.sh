#!/usr/bin/bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=giabaohb48/projectml

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag projectml giabaohb48/projectml:v1
# Step 3:
# Push image to a docker repository
docker push giabaohb48/projectml:v1
