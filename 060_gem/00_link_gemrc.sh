#!/bin/bash
### Install gemrc config

die_if_no_conf_src_set

echo "====================Gems Start===================="

link_file "$CONF_SRC_DIR/060_gem/gemrc" "$HOME/.gemrc"

echo "Done!!!"
echo "=====================Gems End====================="
