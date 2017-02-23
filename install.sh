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

echo "Starting the configuration:"

for d in *; do
  if [ -d "$d" ]; then
    source "$d/install.sh"
    echo -e "\n"
  fi
done

echo "Success!!!"