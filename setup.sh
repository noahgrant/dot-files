#!/bin/sh

# by noah grant
# run this script to run through the dot-files repo on a new machine to symlink
# the dotfiles to the home directory.  binaries will be symlinked to /usr/local/bin/
mkdir -p ~/projects/dot-files
cd ~/projects/dot-files
FILES=.*

for f in $FILES 
do
  if [ -f $f -o -d $f -a $f != '.git' ]; then
    echo "symlinking $f"
    ln -sh ~/projects/dot-files/"$f" ~/"$f"
  fi
done

cd ./bin
BINSCRIPTS=*

for bin in $BINSCRIPTS
do
  if [ -x $bin ]; then
    echo "symlinking $bin to /usr/local/bin"
    ln -s ~/projects/dot-files/bin/"$bin" /usr/local/bin/"$bin"
  fi
done
