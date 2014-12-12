#!/bin/bash

for GITDIR in `ls -1d */`; do
  echo
  echo "checking $GITDIR"
  (cd $GITDIR && git status)
done

