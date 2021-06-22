#!/usr/bin/env fish

echo "Setting up fish shell:"
echo "======================"

echo "Install powerline prompt"
go get -u github.com/justjanne/powerline-go

set_color yellow
echo -n "Run the following manually to finish setup:"
set_color green
echo "/usr/local/opt/fzf/install"
set_color normal
