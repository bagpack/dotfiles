#!/bin/env bash

set -u

script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# backup
bash $script_dir/backup.sh

# install homebrew
bash $script_dir/homebrew/install.sh

# install
bash $script_dir/homebrew/brew.sh
bash $script_dir/homebrew/mas.sh

# symlinks
bash $script_dir/symlink-setup.sh
