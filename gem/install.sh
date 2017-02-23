#!/bin/bash
### Install gemrc config

die_if_no_root_dir

echo "====================Gems Start===================="

link_file "$ROOT_DIR/gem/gemrc" "$HOME/.gemrc"

echo "Done!!!"
echo "=====================Gems End====================="
