#!/bin/bash

for GITDIR in `ls -1d */`; do
  cd $GITDIR
  BRANCH=`git status |grep "On branch" |awk '{print $3}'`
  if git status |grep -q "working tree clean"; then
      if git status |grep -q "commits"; then
          printf "\nchecking $GITDIR:\n"
          git status
          printf "\n"
      else
          printf "checking $GITDIR [$BRANCH]:  ... clean\n"
      fi
  else
      printf "\nchecking $GITDIR [$BRANCH]:\n"
      git status
  fi
  cd ..
  #sleep 0.1
done

