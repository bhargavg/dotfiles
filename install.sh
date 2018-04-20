#!/bin/bash
######################################################################
#  Author      :  bhargavg
#  Created     :  2015-11-03
#
#  Usage       : ./install.sh
#  Description :  Setup new Mac machine
######################################################################


### Utils
export CONF_SRC_DIR
CONF_SRC_DIR=$(pwd)

die_if_exists() {
    if [ -d "$1" ] || [ -f "$1" ]
    then
        echo "$1 exists"
        exit 2
    fi
}

die_if_no_conf_src_set() {
    if [ -z "$CONF_SRC_DIR" ]
    then
        echo "Cannot invoke this script directly"
        exit 2
    fi
}

link_file () {
    die_if_exists "$2"
    ln -s "$1" "$2"
}


### Installation
echo "Starting the configuration:"

find "$CONF_SRC_DIR" -not -path '*/\.*' -type d -depth 1 | while read -r dir; do
  # shellcheck source=/dev/null
  source "$dir/install.sh"
  echo -e '\n'
done

echo "Success!!!"
