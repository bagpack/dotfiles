#!/bin/env bash

# set "System Preferences > App Store > Free Download > No Require Password" to install free application

set -u

script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# mas install
cat $script_dir/mas-list.txt | while read line
do
    set -- $line
    echo "mas install $1 $2"
    mas install $1
done
