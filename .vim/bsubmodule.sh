#!/bin/bash
# This script makes git submodules out of git cloned plugins
bundledir=~/dotfiles/.vim/bundle

cd $bundledir
for dir in `ls`; do
  cd $dir
  repo=`git remote show origin | grep -o 'Fetch URL: .\+' | grep -o 'http.\+'`
  echo $repo
  cd ..
  rm -Rf ./$dir
  git submodule add $repo
done
