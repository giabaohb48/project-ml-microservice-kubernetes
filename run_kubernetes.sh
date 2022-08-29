#!/usr/bin/bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=giabaohb48/projectml:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run projectml --image=$dockerpath
sleep 10

# Step 3:
# List kubernetes pods
kubectl get po -o wide
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/projectml --address 0.0.0.0 8000:80