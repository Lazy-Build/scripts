#!/usr/bin/env bash
set -x
set -e

# Remove any old version of docker
apt-get remove docker docker-engine docker.io containerd runc -y

apt update

apt-get install ca-certificates curl gnupg lsb-release -y

curl -fsSL https://get.docker.com | bash

groupadd docker

usermod -aG docker $USER

newgrp docker

docker run hello-world

echo "Docker install success"
