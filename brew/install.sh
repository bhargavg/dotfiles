#!/bin/bash
### Install nvim config

die_if_no_conf_src_set

echo "====================Homebrew Start===================="

if command -v brew >/dev/null 2>&1; then
    echo 'Already installed, skipping...'
else
    echo 'Installing...'
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Done!!!"
fi

echo "=====================Homebrew End====================="

