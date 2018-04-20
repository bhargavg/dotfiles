#!/bin/bash
### Install ghci config

die_if_no_conf_src_set

echo "===================GHCI Start===================="

link_file "$CONF_SRC_DIR/ghci/ghci" "$HOME/.ghci"

echo "Done!!!"
echo "====================GHCI End====================="
