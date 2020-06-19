#!/bin/env bash

set -u

script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# backup
bash $script_dir/backup.sh

# download git-completion
bash $script_dir/download-git-completion.sh

# install homebrew
bash $script_dir/homebrew/install.sh

# install
bash $script_dir/homebrew/brew.sh
bash $script_dir/homebrew/mas.sh

# symlinks
bash $script_dir/symlink-setup.sh

# @see https://qiita.com/ayihis@github/items/88f627b2566d6341a741
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions
