#!/bin/sh
# vim: ts=2 sw=2 et
focused_window="$(xdotool getactivewindow getwindowname)"

# if window is focused
if [ "$focused_window" = 'Joplin' ]; then
  # minimize window
  xdotool getactivewindow windowminimize
  exit 0
fi

# wmctrl(1)
# -F Window name arguments (<WIN>) are to be treated as exact window titles that are case sensitive. Without  this  options  window
#    titles are considered to be case insensitive substrings of the full window title.
# -R <WIN>
#    Move the window <WIN> to the current desktop, raise the window, and give it focus.
# -b ( add | remove | toggle),prop1 [,prop2 ]
#    Add, remove, or toggle up to two window properties simultaneously. The window that is being modified must be identified with a
#    -r action. The property change is achived by using the EWMH _NET_WM_STATE request. The supported property names (for prop1 and
#    prop2)  are  modal,  sticky,  maximized_vert,  maximized_horz, shaded, skip_taskbar, skip_pager, hidden, fullscreen, above and
#    below.  Two properties are supported to allow operations like maximizing a window to full screen mode. Note that  this  action
#    is made up of exactly two shell command line arguments.
# try to focus joplin
if wmctrl -FR Joplin; then
  wmctrl -Fr Joplin -b add,above
  exit 0
fi

# else launch joplin
flatpak run net.cozic.joplin_desktop && exit 0
