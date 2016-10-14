#!/bin/bash
######################################################################
#  Author      :  bhargavg
#  Created     :  2015-11-03
#
#  Usage       : ./install.sh
#  Description :  Setup vim and other utilities
######################################################################


### Utils
BACKUP_SUFFIX=$(date +%Y%m%d_%H%M%S)
PWD=$(pwd)

backup () {

    if [ -e "$1" ] || [ -d "$1" ]
    then
        BACKUP_PATH="$1-$2"
        echo "$1 exists, backing up to $BACKUP_PATH"

        if [ "$3" == "cp" ]; then
            echo "copying"
            cp "$1" "$BACKUP_PATH"
        else
            echo "moving"
            mv "$1" "$BACKUP_PATH"
        fi
    fi

    return 1
}



### Install Vim config
VIMRC_PATH="$HOME/.vimrc"
VIMDIR_PATH="$HOME/.vim"

echo "Starting the configuration:"
echo "====================VIM Start===================="
echo "Configuring VIM..."


backup $VIMRC_PATH  $BACKUP_SUFFIX
backup $VIMDIR_PATH $BACKUP_SUFFIX

ln -s "$PWD/vimrc" $VIMRC_PATH
ln -s "$PWD/vim" $VIMDIR_PATH

echo "Done!"
echo "Your vim is successfully configured. On the next launch,"
echo "all the required plugins will be installed automagically"
echo "=====================VIM End====================="

echo
echo


### Install pgcli config
PGCLI_PATH="$HOME/.config/pgcli/config"

echo "===================PGCLI Start==================="
echo "Configuring PGCLI..."

backup $PGCLI_PATH $BACKUP_SUFFIX
ln -s "$PWD/pgcli/config" $PGCLI_PATH
echo "Done!"
echo "====================PGCLI End===================="

echo
echo

### Install gemrc
GEMRC_PATH="$HOME/.gemrc"

echo "===================GEMRC Start==================="
echo "Configuring Gemrc..."

backup $GEMRC_PATH $BACKUP_SUFFIX
ln -s "$PWD/gemrc" $GEMRC_PATH
echo "Done!"
echo "====================GEMRC End===================="

echo
echo

### Install tmux
TMUX_CONFIG_PATH="$HOME/.tmux.conf"

echo "===================TMUX Start==================="
echo "Configuring tmux..."

backup $TMUX_CONFIG_PATH $BACKUP_SUFFIX
ln -s "$PWD/tmux.conf" $TMUX_CONFIG_PATH
echo "Done!"
echo "====================TMUX End===================="

echo
echo

### Install zshrc
ZSHRC_PATH="$HOME/.zshrc"

echo "===================ZSHRC Start==================="
echo "Configuring zshrc..."

backup $ZSHRC_PATH $BACKUP_SUFFIX "cp"
SOURCING_STRING="source $PWD/zshrc"
grep -q "$SOURCING_STRING" "$HOME/.zshrc" || echo "$SOURCING_STRING" >> "$HOME/.zshrc"
echo "Done!"
echo "====================ZSHRC END===================="
