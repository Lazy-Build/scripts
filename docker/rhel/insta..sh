#!/usr/bin/env bash
set -x
set -e

# Remove any old version of docker
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

curl -fsSL https://get.docker.com | bash

sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker

docker run hello-world

echo "Docker install success"
