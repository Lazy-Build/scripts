#!/usr/bin/env bash

curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output chrome.deb

dpkg -i chrome.deb

rm chrome.deb
