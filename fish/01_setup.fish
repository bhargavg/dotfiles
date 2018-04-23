#!/usr/bin/env fish

echo "Setting up fish shell:"
echo "======================"

echo "Installing fisherman"
curl -Lo "$CONF_SRC_DIR/fish/config/fish/functions/fisher.fish" --create-dirs https://git.io/fisher

echo "Installing fisherman plugins"
fisher up

echo "Install powerline prompt"
go get -u github.com/justjanne/powerline-go

set_color yellow
echo -n "To install fzf terminal bindings, run: "
set_color green
echo "/usr/local/opt/fzf/install"
set_color normal
