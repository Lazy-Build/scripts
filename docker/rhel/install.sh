#!/usr/bin/env bash
set -x
set -e

# Remove any old version of docker
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

curl -fsSL https://get.docker.com | bash

groupadd docker

usermod -aG docker $USER

newgrp docker

docker run hello-world

echo "Docker install success"
