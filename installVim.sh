#! /bin/sh

# Verifica se tem Gita (from https://github.com/verzola/.vimrc)
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

# Update itself
git pull

if [ -e ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc.old
fi

ln -s .vimrc ~/.vimrc

# Instala o gerenciador de plugins Vundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; 
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    git pull ~/.vim/bundle/Vundle.vim
fi

# Instala o resto dos plugins do vim atraves do Vundle
vim +PluginInstall +qall
