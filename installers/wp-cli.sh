#!/bin/sh
curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o $HOME/.local/bin/wp
chmod +x $HOME/.local/bin/wp
