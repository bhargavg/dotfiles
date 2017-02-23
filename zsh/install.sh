#!/bin/bash
### Install zsh config
if [ -z "$ROOT_DIR" ]
then
    echo "Cannot invoke this script directly"
    exit 2
fi

echo "====================ZSH Start===================="

echo "source \"$ROOT_DIR/zsh/zshrc\"" >> "$HOME/.zshrc"

echo "Done!!!"
echo "=====================ZSH End====================="
