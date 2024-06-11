# netrw

The netrw plugin normally ships with vim and is the default filebrowser. It gets a bad rap and ships with all kinds of features likes remote editing over SSH and FTP, and anecdotally has many bugs. Most developers just jump straight for the NERDtree plugin but in my opinion the default netrw plugin does most of what people use NERDtree for. Moreover, for opening files and traversing codebases there are other native vim options available.

## invoking netrw

:Explore - opens netrw in the current window
:Sexplore - opens netrw in a horizontal split
:Vexplore - opens netrw in a vertical split

## Changing the directory view in netrw

The directory listing view can be modified to show more or less information on files and directories, change the sorting order and hiding certain files.

With the directory browser open hit i to cycle through the view types. There are four different view types: thin, long, wide and tree. A preferred view type can be made permanent by setting it in a .vimrc file.
