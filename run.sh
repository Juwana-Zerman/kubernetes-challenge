#!/bin/bash

# start minikube
minikube start

# set minikube Docker daemon (https://minikube.sigs.k8s.io/docs/commands/docker-env/)
eval $(minikube docker-env)

# minikube status
minikube status

# build docker image
docker build -t k8-challenge:latest .

# deploy yaml files
kubectl apply -f kubedeploy/

# check services
kubectl get service

# check pods

# Windows Machine: using the full pod name port forward it to port 4000 (port used in the yaml files)
kubectl port-forward minikube-k8-challenge-5d66d945d8-zx8zw 4000:4000

echo "Open new terminal window and run the following commands:"

# curl to check endpoint (http://localhost:4000/)
curl http://localhost:4000/
open http://localhost:4000/ # will open in the browser
# OR In a new terminal window:

