#!/bin/bash
### Install Vim config
if [ -z "$ROOT_DIR" ]
then
    echo "Cannot invoke this script directly"
    exit 2
fi

VIMRC_PATH="$HOME/.vimrc"
VIMDIR_PATH="$HOME/.vim"

echo "====================VIM Start===================="

die_if_exists "$VIMRC_PATH"
die_if_exists "$VIMDIR_PATH"

ln -s "$ROOT_DIR/vim/vimrc" "$VIMRC_PATH"
ln -s "$ROOT_DIR/vim/vim" "$VIMDIR_PATH"

echo "Done!!!"
echo "Your vim is successfully configured. On the next launch,"
echo "all the required plugins will be installed automagically"
echo "=====================VIM End====================="
