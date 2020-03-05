#!/bin/bash

cd $HOME

# Install packages from a file, and remove all the comments inside!
sudo apt install $(grep -vE "^\s*#" apt-packages.txt | tr "\n" " ")

# Install antigen for zsh
curl -L git.io/antigen > antigen.zsh

# Dotfiles location
DOTS="$HOME/server-dots"

# Make zsh default
chsh -s $(which zsh)

# Initial setup of folders, repo and symlinks!
#if [ "$already_setup" != true ]; then

echo "Setting up repos directories"

cd $HOME
rm -rf .scripts .zshrc .vimrc
cd .config
rm -rf .vim ranger

#if [ -d "$DOTS" ]; then
#	cd $DOTS
#	git pull origin master
#else
#	echo "Cloning repo..."
#	git clone https://github.com/stavrosfil/dotfiles
#fi


# Symbolic links!
ln -sv $DOTS/ranger $HOME/.config
ln -sv $DOTS/vim/.vim $HOME/.config/
ln -sv $DOTS/vim/.vimrc $HOME/
ln -sv $DOTS/.zshrc $HOME/

#fi


echo $PWD
