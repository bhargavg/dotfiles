#!/bin/bash
### Install Vim config

die_if_no_conf_src_set

echo "====================VIM Start===================="

link_file "$CONF_SRC_DIR/vim/vimrc" "$HOME/.vimrc"
link_file "$CONF_SRC_DIR/vim/vim"   "$HOME/.vim"

echo "Done!!!"
echo "Your vim is successfully configured. On the next launch,"
echo "all the required plugins will be installed automagically"
echo "=====================VIM End====================="
