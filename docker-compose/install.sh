#!/usr/bin/env bash
COMPOSE_VERSION=$(
  git ls-remote https://github.com/docker/compose \
    | grep refs/tags \
    | grep -oE "[0-9]+\.[0-9][0-9]+\.[0-9]+$" \
    | sort --version-sort \
    | tail -n 1
)

echo "Installing docker-compose version ${COMPOSE_VERSION}"
curl -L "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" > /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

curl -L "https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose" > /tmp/docker-compose.bash
sudo mv /tmp/docker-compose.bash /etc/bash_completion.d/docker-compose
