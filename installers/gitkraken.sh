#!/usr/bin/env bash
wget https://release.axocdn.com/linux/gitkraken-amd64.deb -O /tmp/gitkraken.deb
sudo dpkg -i /tmp/gitkraken.deb
rm /tmp/gitkraken.deb
