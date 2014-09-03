#!/bin/bash

for GITDIR in `ls -1d */`; do
  echo
  echo "pulling from $GITDIR"
  (cd $GITDIR && git pull)
done

