# setup_vim

## Tmux

Tmux is used to manage window panels. There could be color misdisplay when vim is used within tmux-windows.
The main reason could be the mismatch between the shell color and the tmux color settings.
Here are some tips to get things right.

1. Find out the color theme used by shell
   `echo $TERM`
   In my case, the color setting is `xterm-256color`. So the tmux color should be assigned the same way.

2. Set tmux color
   The tmux color setting file locates at `~/.tmux.conf`.
   Add `set -g default-terminal "xterm-256color"` to the file.

   You need to kill **all** existing sessions first, then the new setting will take effect.
