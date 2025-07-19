#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y wget
sudo apt-get install -y git
sudo apt-get install -y gdb
sudo apt-get install -y gdb-multiarch
sudo apt-get install -y build-essential
sudo apt-get install -y unzip
sudo apt-get install -y python3
sudo apt-get install -y python3-venv
sudo apt-get install -y curl
sudo apt-get install -y ghostscript
sudo apt-get install -y ripgrep
sudo apt-get install -y fd-find
sudo apt-get install -y luarocks
sudo apt-get install -y openocd
sudo apt-get install -y bear
sudo apt-get install -y imagemagick
sudo apt-get install -y kitty
sudo apt-get install -y pip

wget https://github.com/jesseduffield/lazygit/releases/download/v0.53.0/lazygit_0.53.0_Linux_x86_64.tar.gz -P /tmp/
tar -xvf /tmp/lazygit_0.53.0_Linux_x86_64.tar.gz -C /tmp/
sudo mv /tmp/lazygit /usr/local/bin

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
npm install -g neovim
