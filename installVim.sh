#!/bin/sh

# Seta diretorio de execucao o do proprio script
cd "$(dirname "$0")"


# Verifica se tem Gita (from https://github.com/verzola/.vimrc)
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

# Update itself
git pull

if [ -h ~/.vimrc ] || [ -e ~/.vimrc ]
then
    echo "Moving current ~/.vimrc to ~/.vimrc.old"
    mv ~/.vimrc ~/.vimrc.old
fi

echo "Criando link simbolico para .vimrc" 
ln -s $PWD/.vimrc ~/.vimrc

# Instala o gerenciador de plugins Vundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; 
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    cd ~/.vim/bundle/Vundle.vim;
    git pull;
    cd -;
fi

# Instala o resto dos plugins do vim atraves do Vundle
vim +PluginInstall +qall
