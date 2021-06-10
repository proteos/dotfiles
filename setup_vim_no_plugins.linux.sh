#!/bin/bash

apt-get update
apt-get install -y vim
# ln -s /dotfiles/vim/vimrc.simple ~/.vimrc
ln -s ~/dotfiles/vim/vimrc.no_plugins ~/.vimrc
