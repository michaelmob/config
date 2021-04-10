#!/usr/bin/env bash
[ ! $1 ] && echo 'No input!' && exit 1
vim "$HOME/.local/scripts/$1"
