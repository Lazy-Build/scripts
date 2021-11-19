#!/usr/bin/env bash
set -x
set -e

curl -L https://discord.com/api/download?platform=linux&format=tar.gz --output discord.tar.gz

tar -xvf discord.tar.gz

mv Discord /usr/share/discord

mv /usr/share/discord/Discord.desktop /usr/share/applications/
