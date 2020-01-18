#!/bin/bash
wget https://release.axocdn.com/linux/gitkraken-amd64.deb -O gitkraken.deb
sudo dpkg -i gitkraken.deb
rm gitkraken.deb
