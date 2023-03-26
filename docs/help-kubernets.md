
## Minikube

https://minikube.sigs.k8s.io/docs/start/

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

https://minikube.sigs.k8s.io/docs/drivers/docker/

**Linux**

	minikube start --driver=docker

**Mac OS**

Start minikube with a VM driver and `docker` container runtime if not already running.

	minikube start --container-runtime=docker --vm=true


To make docker the default driver:

	minikube config set driver docker

Replacement Docker desktop

1-Install docker core/CLI and docker-compose

	brew install docker
	brew install docker-compose

2-Install minikube and driver
	
	brew install minikube
	brew install hyperkit
	
3-
	
	minikube start --driver=hyperkit
	
4-

	minikube start --container-runtime=docker --vm=true




## Kubectl

https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
