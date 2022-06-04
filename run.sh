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

# check pods
kubectl get pods

# check services
kubectl get service

# get minikube ip
minikube ip
ENDPOINT=$(minikube ip):4000

# curl to check endpoint
curl $(ENDPOINT)

# check cluster health with Kubernetes Dashboard
minikube dashboard