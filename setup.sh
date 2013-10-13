#!/bin/sh

# run this script to run through the dot-files repo on a new machine to symlink
# the dotfiles to the home directory.  binaries will be symlinked to /usr/local/bin/
FILES=./.*

for f in $FILES 
do
  if [ -f $f ]; then
    echo "symlinking $f"
    ln -s $f ~/"$f"
  fi
done

cd ./bin
BINSCRIPTS=./*

for bin in $BINSCRIPTS
do
  if [ -f $bin ]; then
    echo "symlinking $bin to /usr/local/bin"
    ln -s $bin /usr/local/bin/"$bin"
  fi
done
