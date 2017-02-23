#!/bin/bash
### Install ghci config

die_if_no_root_dir

echo "===================GHCI Start===================="

link_file "$ROOT_DIR/ghci/ghci" "$HOME/.ghci"

echo "Done!!!"
echo "====================GHCI End====================="
