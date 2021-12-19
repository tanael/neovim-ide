#!/bin/bash

set -e

stow home

sudo apt update
# TODO: add delta
sudo apt install -y neovim git curl npm shellcheck fzf fd-find bat
	
sudo npm i -g bash-language-server
