#!/usr/bin/env zsh

# https://github.com/unixorn/awesome-zsh-plugins#antibody

# if antigen is nix installed.
FILE=~/.nix-profile/share/antigen/antigen.zsh     
if [ -f $FILE ]
then
   source $FILE
fi

# if antigen is brew installed.
FILE=/opt/homebrew/share/antigen/antigen.zsh    
if [ -f $FILE ]
then
   source $FILE
fi

# if antigen is apt-get installed
FILE=/usr/share/zsh-antigen/antigen.zsh
if [ -f $FILE ]
then
   source $FILE
fi