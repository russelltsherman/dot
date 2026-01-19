
if [ -f $HOME/.pgpass ]
then
  export PGPASSFILE=$HOME/.pgpass
fi

export PATH="${PATH}:/opt/homebrew/opt/postgresql@16/bin"
