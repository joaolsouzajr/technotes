# Docker help

## Commands

Concept.

		docker <subcommand> <subcommand params> <target command>

Search for a suitable image

		docker search <text>

Run docker.

		#hello-world is a image name from https://hub.docker.com
		docker run hello-world

Show all containers on the system.

		docker ps -a #all containers
		docker ps #Only activity containers.

List images on the system.

		docker images

Remove images

		docker rmi -f <repository or image id>

Login on hub

		docker login

Run an interactive container

		docker run -t -i ubuntu /bin/bash


* docker run runs a container.
* ubuntu is the image you would like to run.
* -t flag assigns a pseudo-tty or terminal inside the new container.
* -i flag allows you to make an interactive connection by grabbing the standard 
input (STDIN) of the container.
* /bin/bash launches a Bash shell inside our container.

Start a daemonized Hello world

		docker run -d ubuntu /bin/sh -c \
		"while true; do echo hello world; sleep 1; done"

* docker run runs the container.
* -d flag runs the container in the background (to daemonize it).
* ubuntu is the image you would like to run.


Shows the standard output of a container.

		docker logs <NAMES (from docker ps)>

Stops running containers.

		docker stop <NAMES>

Network

		docker network inspect bridge

## Observations

Add user to docker group, because any commands need sudo permission

sudo usermod -aG docker $(whoami)

## Build Image

1. Create directory for new image:

		mkdir mydockerbuild

2. Create Dockerfile with content:

		FROM docker/whalesay:latest                                                     
		RUN apt-get -y update && apt-get install -y fortunes                            
		CMD /usr/games/fortune -a | cowsay

3. Build an image:

		#hello-world is a image name 
		docker build -t docker-whale .
 
4. Tag for publis on hub

		docker tag e3004ceaae67 lourencoccc/docker-whale:latest	

5. Push to hub

		docker push lourencoccc/docker-whale


