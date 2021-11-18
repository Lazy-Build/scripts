#!/usr/bin/env bash
set -x
set -e

# Remove any old version of docker
sudo apt-get remove docker docker-engine docker.io containerd runc -y

sudo apt update

sudo apt-get install ca-certificates curl gnupg lsb-release -y

curl -fsSL https://get.docker.com | bash

sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker

docker run hello-world

echo "Docker install success"
