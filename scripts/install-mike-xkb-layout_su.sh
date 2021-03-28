#!/usr/bin/env bash
set -x

key_path='org.gnome.desktop.input-sources xkb-options'
gsettings get $key_path
gsettings set $key_path "['altwin:swap_alt_win', 'lv3:caps_switch']"

key_path='org.gnome.desktop.input-sources sources'
gsettings get $key_path
gsettings set $key_path "[('xkb', 'mike'), ('xkb', 'us')]"

sudo ln -sf ~/.mike/xkb_symbols $xkb/symbols/mike

xkb_path=/usr/share/X11/xkb
patch_path=~/.mike/patches
sudo patch $xkb_path/rules/base.lst $patch_path/xkb-lst.patch
sudo patch $xkb_path/rules/base.xml $patch_path/xkb-xml.patch
sudo patch $xkb_path/rules/evdev.lst $patch_path/xkb-lst.patch
sudo patch $xkb_path/rules/evdev.xml $patch_path/xkb-xml.patch
