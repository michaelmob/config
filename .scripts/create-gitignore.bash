#!/usr/bin/env bash
end='\033[0m'; red='\033[0;31m'; gre='\033[0;32m'
[[ ! "$1" ]] && echo -e "${red}Error: Missing argument${end}" 2>&1 && exit 1

f=~/.scripts/$1
cp -n "$0" "$f"
chmod u+x "$f"
$EDITOR "$f"

exit 0
