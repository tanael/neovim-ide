#!/bin/bash

set -e

cnf_dir="$HOME/.config/nvim"

if [ ! -d "${cnf_dir}" ]; then
	mkdir -p "${cnf_dir}"
fi

sudo apt update
sudo apt install -y neovim git curl exuberant-ctags python3-jedi python3-yapf \
	python3-setproctitle
	
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
