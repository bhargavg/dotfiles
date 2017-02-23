#!/bin/bash
### Install nvim config

if [ -z "$ROOT_DIR" ]
then
    echo "Cannot invoke this script directly"
    exit 2
fi

echo "====================NVIM Start===================="

NVIMDIR_PATH="$HOME/.config"

mkdir -p "$NVIMDIR_PATH"

ln -s "$ROOT_DIR/vim/vim" "$NVIMDIR_PATH/nvim"

echo "Done!!!"
echo "Your nvim is successfully configured. On the next launch,"
echo "all the required plugins will be installed automagically"
echo "=====================NVIM End====================="
