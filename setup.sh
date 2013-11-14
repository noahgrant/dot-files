#!/bin/sh

# by noah grant
# run this script to run through the dot-files repo on a new machine to symlink
# the dotfiles to the home directory.  binaries will be symlinked to /opt/local/bin/
cd ~/dot-files
FILES=.*

for f in $FILES 
do
  if [ -f $f -o -d $f -a $f != '.git' ]; then
    echo "symlinking $f"
    ln -sh dot-files/"$f" ~/"$f"
  fi
done

cd ./bin
BINSCRIPTS=*

for bin in $BINSCRIPTS
do
  if [ -x $bin ]; then
    echo "symlinking $bin to /opt/local/bin"
    ln -s ~/dot-files/"$bin" /opt/local/bin/"$bin"
  fi
done
