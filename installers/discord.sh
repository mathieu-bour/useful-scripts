#!/usr/bin/env bash
wget -O /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /tmp/discord.deb
rm /tmp/discord.deb
