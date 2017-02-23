#!/bin/bash
### Install Vim config

die_if_no_root_dir

echo "====================VIM Start===================="

link_file "$ROOT_DIR/vim/vimrc" "$HOME/.vimrc"
link_file "$ROOT_DIR/vim/vim"   "$HOME/.vim"

echo "Done!!!"
echo "Your vim is successfully configured. On the next launch,"
echo "all the required plugins will be installed automagically"
echo "=====================VIM End====================="
