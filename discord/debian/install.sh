#!/usr/bin/env bash
set -x
set -e
export DEBIAN_FRONTEND=noninteractive

apt-cache search libappindicator1

apt install -y libasound2 libatomic1 libgconf-2-4 libnotify4 libnspr4 libnss3 libxss1 libc++1 libappindicator1

curl -L "https://discord.com/api/download?platform=linux&format=deb" --output discord.deb

dpkg -i discord.deb
