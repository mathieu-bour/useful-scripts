#!/usr/bin/env bash
VERSION=${1:'7.4'};
# Install ondrej/php PPA
sudo add-apt-repository ppa:ondrej/php

sudo apt-get update
sudo apt install -y \
  "php$VERSION" \
  "php$VERSION-cli" \
  "php$VERSION-curl" \
  "php$VERSION-gd" \
  "php$VERSION-gmp" \
  "php$VERSION-json" \
  "php$VERSION-mbstring" \
  "php$VERSION-mysql" \
  "php$VERSION-opcache" \
  "php$VERSION-xml" \
  "php$VERSION-zip" \
  "php-xdebug"
