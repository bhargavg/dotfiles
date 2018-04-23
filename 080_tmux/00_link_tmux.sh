#!/bin/bash
### Install tmux config

die_if_no_conf_src_set

echo "===================TMUX Start===================="

link_file "$CONF_SRC_DIR/080_tmux/tmux.conf" "$HOME/.tmux.conf"

echo "Done!!!"
echo "====================TMUX End====================="
