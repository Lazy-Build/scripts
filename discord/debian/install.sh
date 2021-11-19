#!/usr/bin/env bash
set -x
set -e

apt install -y libasound2 libatomic1 libgconf-2-4 libnotify4 libc++1

curl -L "https://discord.com/api/download?platform=linux&format=deb" --output discord.deb

dpkg -i discord.deb
