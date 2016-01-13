#! /bin/sh

# Verifica se tem Gita (from https://github.com/verzola/.vimrc)
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

ln -s .vimrc ~/.vimrc

# Instala o gerenciador de plugins Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Instala o resto dos plugins do vim atraves do Vundle
vim +PluginInstall +qall
