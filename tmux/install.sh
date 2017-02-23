#!/bin/bash
### Install tmux config

die_if_no_root_dir

echo "===================TMUX Start===================="

link_file "$ROOT_DIR/tmux/tmux.conf" "$HOME/.tmux.conf"

echo "Done!!!"
echo "====================TMUX End====================="
