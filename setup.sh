#!/bin/bash
GIT_URL="https://github.com/"
git clone "$GIT_URL"/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone "$GIT_URL"/GT3CH1/dotfiles ~/.config

echo "Beginning package install"
sudo apt install googletest asmfmt
