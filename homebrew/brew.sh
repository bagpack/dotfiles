#!/bin/env bash

set -u

script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# brew install
cat $script_dir/brew-list.txt | while read line
do
    echo "brew install $line"
    brew install $line
done

# Remove outdated versions from the cellar
brew cleanup

# brew cask install
cat $script_dir/cask-list.txt | while read line
do
    echo "brew cask install $line"
    brew cask install $line
done

