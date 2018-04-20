#!/bin/bash
### Install zsh config

die_if_no_conf_src_set

echo "====================ZSH Start===================="

echo "source \"$CONF_SRC_DIR/zsh/zshrc\"" >> "$HOME/.zshrc"

echo "Done!!!"
echo "=====================ZSH End====================="
