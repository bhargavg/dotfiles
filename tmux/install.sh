#!/bin/bash
### Install tmux config
if [ -z "$ROOT_DIR" ]
then
    echo "Cannot invoke this script directly"
    exit 2
fi

TMUXRC_PATH="$HOME/.tmux.conf"

echo "===================TMUX Start===================="

die_if_exists "$TMUXRC_PATH"

ln -s "$ROOT_DIR/tmux/tmux.conf" "$TMUXRC_PATH"

echo "Done!!!"
echo "====================TMUX End====================="
