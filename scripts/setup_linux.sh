#!/usr/bin/env bash

sudo apt-get update
sudo apt update

## Instal ZSH
sudo apt install zsh -y

## Install Oh-my-ZSH in "unattended mode"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# remove default .zshrc file created in the install step because we'll have created it anyways
rm ~/.zshrc

# Install Stow
sudo apt install stow -y

# Install EZA (the modern ls)
sudo apt install -y gpg
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
