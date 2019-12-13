#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kogisu12/mlstack:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment mlstack --image $dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $(kubectl get po -o jsonpath='{.items[0].metadata.name}') 8000:80


