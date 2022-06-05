# Kubernetes challenge

Deploy this application to [Minikube](https://github.com/kubernetes/minikube) and customize the environment variable to display MINIKUBE.

```
$ curl $(minikube ip)
Hello MINIKUBE!
```

## Instructions

- Fork this repo
- Build the Docker image
- Write yaml files for a deployment, service, ingress and configmap
- Deploy your application to Minikube
- You should be able to `curl` Minikube's ip and retrieve the string `Hello MINIKUBE!`
- Commit your files to Github

## Local Development Steps

This project was completed using Windows Pro. The local environment setup consisted of:

- Installing Docker
- Installing Minikube
- Cloning my copy of the repo to the local machine
- Creating the yaml files for the deployment, service, ingress and configmap
- Adding commands to the `run.sh` file to deploy the application
- Run the `run.sh` file to deploy the application to Minikube
- Once the terminal runs all commands and reads Forwarding from ports 4000, you should be able to **OPEN A NEW TERMINAL WINDOW**  and run the command **`curl localhost:4000`** or **`curl 127.0.0.1:4000`** and retrieve the string **`Hello MINIKUBE!`**. You can also view the string in the browser by visiting **`http://localhost:4000/`**

## Notes

There's no need to push the Docker image to a Docker registry. You should be able to build and use the image from within Minikube.

You can expose Minikube's Docker daemon with:

```shell
eval (minikube docker-env)
```
