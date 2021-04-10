#!/bin/sh
# vim: ts=2 sw=2 et
focused_window="$(xdotool getactivewindow getwindowname)"

# if window is focused
if [ "$focused_window" = 'Joplin' ]; then
  # minimize window
  xdotool getactivewindow windowminimize

# try to focus joplin
elif wmctrl -Fa Joplin; then
  wmctrl -r Joplin -b add,above

# else launch joplin
else
  flatpak run net.cozic.joplin_desktop
fi
