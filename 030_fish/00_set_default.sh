#!/bin/bash
### Configure fish shell

die_if_no_conf_src_set

echo "Setting fish as default shell:"
echo "=============================="

FISH_PATH="$(brew --prefix)/bin/fish"

if ! grep fish /etc/shells; then
    echo "Adding fish shell to /etc/shells"
    echo "$FISH_PATH" | sudo tee -a /etc/shells
fi


echo "Linking the config directory"
mkdir -p ~/.config
ln -sF "$CONF_SRC_DIR/030_fish/config/fish" ~/.config/fish

# echo "Running chsh"
# chsh -s "$FISH_PATH"
