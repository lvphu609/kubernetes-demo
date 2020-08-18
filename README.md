# Kubernetes-demo

This project provides basic knowledge on Kubernetes and some simple examples on Kubernetes features.

## Getting Started
### 1. Setup Kubernetes
First, you need a working Kubernetes cluster, there are many ways to get a working Kubernetes cluster:
#### Your local machine
To runs a single-node Kubernetes cluster in a virtual machine on your personal computer, you could use Minikube. Refer [How to install Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/).
#### Cloud services
It's easier to get a working Kubernetes cluster on cloud, but they are not free, some popular options are:
- AWS: [Amazon Elastic Kubernetes Service](https://aws.amazon.com/eks/).
- Azure: [Azure Kubernetes Service](https://azure.microsoft.com/en-us/services/kubernetes-service/)
- Google Cloud: [Google Kubernetes Engine](https://cloud.google.com/kubernetes-engine)
### 2. Setup kubectl
The Kubernetes command-line tool, [kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/), allows you to run commands against Kubernetes clusters. You can use kubectl to deploy applications, inspect and manage cluster resources, and view logs.
- For installation, see [Install and Set Up kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- For a complete list of kubectl operations, see [Overview of kubectl](https://kubernetes.io/docs/reference/kubectl/overview/).
### 3. Deploy and manage your first application on Kubernetes
We already prepared a simple Java application (built with [Quarkus](https://quarkus.io/)) which ready to run on Kubernetes for you, please refer the instructions [here](hello-service/README.md) for how to build, run and deploy the app.
