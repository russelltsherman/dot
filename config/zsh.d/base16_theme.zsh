#!/usr/bin/env zsh

# base16 color themes http://chriskempson.com/projects/base16/ are loaded as a zsh plugin
# set color theme for your shell by specifying which color theme script to use here
FILE=~/.antigen/bundles/russelltsherman/base16-shell-main/scripts/base16-gruvbox-dark-medium.sh
if [ -f $FILE ]
then
   source $FILE
fi
