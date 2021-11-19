#!/usr/bin/env bash
set -x
set -e
export DEBIAN_FRONTEND=noninteractive

echo "##########"
curl "http://deb.debian.org/debian/pool/main/libi/libindicator/libindicator_0.5.0-3.debian.tar.xz" --output libindicator_0.5.0-3.debian.tar.xz
tar -xvf libindicator_0.5.0-3.debian.tar.xz
ls -lah

bash debian/libindicator3-7.install
echo "##########"

apt install -y libasound2 libatomic1 libgconf-2-4 libnotify4 libnspr4 libnss3 libxss1 libc++1 libappindicator1

curl -L "https://discord.com/api/download?platform=linux&format=deb" --output discord.deb

dpkg -i discord.deb
