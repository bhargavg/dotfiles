#!/bin/bash
### Install nvim config

die_if_no_root_dir

echo "====================NVIM Start===================="

NVIMDIR_PATH="$HOME/.config"
mkdir -p "$NVIMDIR_PATH"
link_file "$ROOT_DIR/vim/vim" "$NVIMDIR_PATH/nvim"

echo "Done!!!"
echo "Your nvim is successfully configured. On the next launch,"
echo "all the required plugins will be installed automagically"
echo "=====================NVIM End====================="
