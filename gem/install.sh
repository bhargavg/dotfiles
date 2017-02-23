#!/bin/bash
### Install gemrc config
if [ -z "$ROOT_DIR" ]
then
    echo "Cannot invoke this script directly"
    exit 2
fi

GEMRC_PATH="$HOME/.gemrc"

echo "====================Gems Start===================="

die_if_exists "$GEMRC_PATH"
ln -s "$ROOT_DIR/gem/gemrc" "$GEMRC_PATH"

echo "Done!!!"
echo "=====================Gems End====================="
