#!/usr/bin/env bash
set -x
set -e

apt install -y libc++ libnotify

curl -L https://discord.com/api/download?platform=linux&format=deb --output discord.deb

dpkg -i discord.deb
