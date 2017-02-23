#!/bin/bash
### Install zsh config

die_if_no_root_dir

echo "====================ZSH Start===================="

echo "source \"$ROOT_DIR/zsh/zshrc\"" >> "$HOME/.zshrc"

echo "Done!!!"
echo "=====================ZSH End====================="
