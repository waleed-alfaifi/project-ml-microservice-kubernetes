#!/usr/bin/env bash

# This is your Docker ID/path
dockerpath="waleed83/udacity-project-4:v1.0.0"

# Step 2
# Create a deployment with the image 
kubectl create deployment udacity-project-4 --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Wait for pod to be ready
kubectl wait --for=condition=ready pod -l app=udacity-project-4 --timeout=90s

# Step 4:
# Forward the container port to a host

# this is used for debugging
kubectl port-forward deployment/udacity-project-4 8000:80

# this is used in porduction
# kubectl expose deployment udacity-project-4 --type=NodePort --port=8000 --target-port=80

