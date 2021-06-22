set -gx EDITOR nvim
set -gx COCOAPODS_DISABLE_STATS 1
set -gx GPG_TTY (tty)
set -gx GOPATH (go env GOPATH)
set -gx fish_user_paths '/usr/local/sbin' "$HOME/.rvm/bin" $fish_user_paths
set PATH (go env GOPATH)/bin $HOME/.cargo/bin $PATH

rvm default

source /Users/bhargavgurlanka/Library/Preferences/org.dystroy.broot/launcher/fish/br
