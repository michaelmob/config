#!/usr/bin/env bash
git clone --recursive https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local
echo 'source ~/.local/share/blesh/ble.sh' > ~/.bashrc.d/blesh.bash
