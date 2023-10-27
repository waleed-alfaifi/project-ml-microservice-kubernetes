[![CircleCI](https://dl.circleci.com/status-badge/img/gh/waleed-alfaifi/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/waleed-alfaifi/project-ml-microservice-kubernetes/tree/main)

# Summary of the project

This project is a part of Udacity Cloud DevOps Engineer Nanodegree Program. In this project, I applied the skills I have acquired in this course to operationalize a Machine Learning Microservice API. I have used a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. I have used `Docker` to containerize this model and `Kubernetes` to deploy the containerized model to a cluster. I have also used `CircleCI` to integrate the code with the project.

# Instructions on how to run the Python scripts and web app

## To test the app locally

1. Create a virtualenv and activate it
2. Run `make install` to install the necessary dependencies
3. Run `python app.py` to run the app (notice that it will run on port 80, so you might need to change the port in the `make_prediction.sh` file)
4. Run `./make_prediction.sh` to test the app

## To run the app in Docker

1. Run `./run_docker.sh` to build and run the app in Docker. 
This will build an image with tag `udacity-project-4` and run a container with the same image on port 8000
2. Run `./make_prediction.sh` to test the app. No need to change the port in the `make_prediction.sh` file as the container is running on port 8000

## To upload the image to Docker Hub

1. Run `./upload_docker.sh` to upload the image to Docker Hub. You will have to change the `dockerpath` variable in the script to your Docker Hub image name

## To run the app in Kubernetes

1. Run `./run_kubernetes.sh` to build and run the app in Kubernetes. This pulls the image uploaded by the script `upload_docker.sh`
2. On another terminal, run `./make_prediction.sh` to test the app



# Files in the repository

- `app.py`: The main python file that contains the app
- `Dockerfile`: The file that contains the instructions to build the Docker image
- `make_prediction.sh`: A script that sends a request to the app to make a prediction
- `Makefile`: A file that contains the instructions to install the dependencies and lint the code
- `requirements.txt`: A file that contains the dependencies
- `run_docker.sh`: A script that builds and runs the app in Docker
- `run_kubernetes.sh`: A script that builds and runs the app in Kubernetes
- `upload_docker.sh`: A script that uploads the image to Docker Hub
- `.circleci/config.yml`: A file that contains the CircleCI pipeline configuration
