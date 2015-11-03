#!/bin/bash
######################################################################
#  Author      :  bhargavg
#  Created     :  2015-11-03
#
#  Usage       : ./install.sh
#  Description :  Setup vim configuration
######################################################################


VIMRC_PATH="$HOME/.vimrc"
VIMDIR_PATH="$HOME/.vim"

BACKUP_SUFFIX=$(date +%Y%m%d_%H%M%S)
PWD=$(pwd)

if [ -e "$VIMRC_PATH" ]
then
    VIMRC_BACKUP_PATH="$VIMRC_PATH-$BACKUP_SUFFIX"
    echo "$VIMRC_PATH exists, backing up to $VIMRC_BACKUP_PATH"
    mv "$VIMRC_PATH" "$VIMRC_BACKUP_PATH"
fi


if [ -d "$VIMDIR_PATH" ]
then
    VIMDIR_BACKUP_PATH="$VIMDIR_PATH-$BACKUP_SUFFIX"
    echo "$VIMDIR_PATH exists, backing up to $VIMDIR_BACKUP_PATH"
    mv "$VIMDIR_PATH" "$VIMDIR_BACKUP_PATH"
fi

ln -s "$PWD/vimrc" $VIMRC_PATH
ln -s "$PWD/vim" $VIMDIR_PATH
