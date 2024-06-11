#!/usr/bin/env zsh

if [ $ACTIVE_PROFILE = "blockhenge" ]
then
  alias::new 'cdco' 'cd ~/src/gitlab.com/bhco/cryptomnio && code .'
  alias::new 'cdef' 'cd ~/src/gitlab.com/bhco/ef && code .'
fi

if [ $ACTIVE_PROFILE = "finbotsdev" ]
then
  alias::new 'cdfx' 'cd ~/src/github.com/finbotsdev/developer && code .'
fi
