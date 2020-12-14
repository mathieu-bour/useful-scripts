#!/bin/env bash
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl gnupg

if [ ! -f /etc/apt/sources.list.d/google-cloud-sdk.list ]; then
  echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
fi
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

sudo apt update
sudo apt install google-cloud-sdk

if ! grep -q "google-cloud-sdk completion:start" "$HOME/.bashrc"; then
	cat <<EOT >> ~/.bashrc

# google-cloud-sdk completion:start
if [ -f /usr/lib/google-cloud-sdk/completion.bash.inc ]; then
  source /usr/lib/google-cloud-sdk/completion.bash.inc
fi
# google-cloud-sdk completion:end
EOT
fi

source "$HOME/.bashrc"