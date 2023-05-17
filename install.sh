#!/usr/bin/env zsh

# Run on setup of a new spin environment
# Create common color functions
autoload -U colors
colors

# Install Antigen plugin/theme manager if it's not already installed
if [[ ! -d $HOME/antigen ]]; then
	echo -e "Antigen not found, installing..."
	cd $HOME
	git clone https://github.com/zsh-users/antigen.git
	cd -
fi

source ~/antigen/antigen.zsh
antigen update

echo -e "Linking .zshrc..."
ln -vsfn ~/dotfiles/.zshrc ~/.zshrc

echo -e "Update path..."
PATH=~/dotfiles/bin:$PATH