#!/bin/bash
######################################################################
#  Author      :  bhargavg
#  Created     :  2015-11-03
#
#  Usage       : ./install.sh
#  Description :  Setup vim and other utilities
######################################################################


### Utils
export ROOT_DIR
ROOT_DIR=$(pwd)

die_if_exists() {
    if [ -d "$1" ] || [ -f "$1" ]
    then
        echo "$1 exists"
        exit 2
    fi
}

die_if_no_root_dir() {
    if [ -z "$ROOT_DIR" ]
    then
        echo "Cannot invoke this script directly"
        exit 2
    fi
}

link_file () {
    die_if_exists $2
    ln -s $1 $2
}


### Installation
echo "Starting the configuration:"

for d in *; do
  if [ -d "$d" ]; then
    source "$d/install.sh"
    echo -e "\n"
  fi
done

echo "Success!!!"