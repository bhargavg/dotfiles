#!/usr/bin/env fish

echo "Setting up fish shell:"
echo "======================"

echo "Installing fisherman"
curl -Lo "$CONF_SRC_DIR/030_fish/config/fish/functions/fisher.fish" --create-dirs https://git.io/fisher

echo "Install powerline prompt"
go get -u github.com/justjanne/powerline-go

set_color yellow
echo -n "Run the following manually to finish setup:"
set_color green
echo "fisher up"
echo "/usr/local/opt/fzf/install"
set_color normal
