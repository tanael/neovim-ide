#!/bin/bash

set -e

stow home

sudo apt update
sudo apt install -y neovim git curl npm shellcheck
	
sudo npm i -g bash-language-server
