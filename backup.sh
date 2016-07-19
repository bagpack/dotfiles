#!/bin/env bash

set -u

###  backup old machine's key items
mig_dir=~/migration

mkdir -p $mig_dir/home
cd $mig_dir

# what is worth reinstalling?
brew leaves      		> brew-list.txt    # all top-level brew installs
brew cask list 			> cask-list.txt
mas list > mas-list.txt
npm list -g --depth=0 	> npm-g-list.txt
apm list --installed --bare > atom-packages.txt

# backup dotfiles
cp -R ~/.ssh $mig_dir/home
cp ~/.bash_profile $mig_dir
cp ~/.bashrc $mig_dir
