#!/usr/bin/env bash
set -x
set -e

yum install curl -y

curl -fsSL https://get.docker.com | bash

docker run hello-world

echo "Docker install success"
