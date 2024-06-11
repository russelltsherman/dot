#!/usr/bin/env zsh

# https://github.com/unixorn/awesome-zsh-plugins#antibody

# if antigen is available.. initialize it
FILE=~/.nix-profile/share/antigen/antigen.zsh     
if [ -f $FILE ]
then
   source $FILE
fi
