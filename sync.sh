#!/bin/bash

cd $HOME

# Install all snap packages
snap-packages.txt xargs sudo snap install

# Install packages from a file, and remove all the comments inside!
sudo apt install $(grep -vE "^\s*#" apt-packages.txt | tr "\n" " ")

# Install antigen for zsh
curl -L git.io/antigen >antigen.zsh

# Dotfiles location
DOTS="$HOME/dotfiles"

# Make zsh default
chsh -s $(which zsh)

# Initial setup of folders, repo and symlinks!
if [ "$already_setup" != true ]; then
	echo "Setting up repos directories"

	cd $HOME
	rm -rf .scripts .zshrc .vimrc
	cd .config
	rm -rf i3 i3blocks rofi .vim zathura compton kitty ranger
	sudo rm -rf /etc/X11/xorg.conf /etc/X11/xorg.conf.d

	cd $HOME
	mkdir -p repos

	cd repos
	echo "Cloning repo..."
	git clone https://github.com/stavrosfil/dotfiles

	# Symbolic links!
	ln -sv $DOTS/ranger $HOME/.config
	ln -sv $DOTS/vim/.vim $HOME/.config/
	ln -sv $DOTS/vim/.vimrc $HOME/
	ln -sv $DOTS/.zshrc $HOME/
fi

cd $DOTS
git pull

echo $PWD
