#!/usr/bin/env bash
set -x
set -e

curl -fsSL https://get.docker.com | bash

groupadd docker

usermod -aG docker $USER

newgrp docker

docker run hello-world

echo "Docker install success"
