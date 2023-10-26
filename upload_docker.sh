#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="udacity-project-4:v1.0.0"

# Step 2:  
# login to docker
docker login


# Get username from terminal input
echo "Enter your docker username:"
read username

# Tag and print
docker tag udacity-project-4:latest $username/$dockerpath
echo "Docker ID and Image: $username/$dockerpath"


# Step 3:
# Push image to a docker repository
docker push $username/$dockerpath



