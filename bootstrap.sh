#!/usr/bin/env bash

git pull origin master

function doIt() {
  rsync $1 --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
    --exclude "README.md" --exclude "LICENSE-MIT.txt" --exclude samples -avh --no-perms . ~/
}

if [ "$1" == "--dry-run" -o "$1" == "-n" ]; then
  echo "This repository contains the following files:"
  doIt --dry-run

elif [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
  ~/brew.sh
  source ~/.bash_profile
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi

unset doIt

