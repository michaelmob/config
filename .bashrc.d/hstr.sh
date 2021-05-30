#!/bin/sh
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
[[ $- == *i* ]] && bind '"\C-r": "\C-ahstr --\C-j"'
