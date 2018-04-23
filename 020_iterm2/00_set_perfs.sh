#!/bin/bash
### Configure iTerm2 after installation

die_if_no_conf_src_set

echo "===================iTerm2 Start===================="

defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$CONF_SRC_DIR/iterm2"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -int 1

echo "Done!!!"
echo "====================iTerm2 End====================="
