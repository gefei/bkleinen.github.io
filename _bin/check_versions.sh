#!/bin/bash
wget -O commit-htw.txt http://home.htw-berlin.de/~kleinen/commit.txt
VERSION_HTW=$(cat commit-htw.txt)
VERSION_GITHUB=$(git log --pretty=format:'%h' -n 1)
if [ $VERSION_HTW == $VERSION_GITHUB ]; then
  echo "versions match"
  exit 0
else
  echo "versions don't match"
  exit 1
fi
