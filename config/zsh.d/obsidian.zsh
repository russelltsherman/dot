
# if cargo enf file exists load it
if test -f "/Applications/Obsidian.app/Contents/MacOS/Obsidian"
then
  # add obisdian cli to our path
  PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"
fi
