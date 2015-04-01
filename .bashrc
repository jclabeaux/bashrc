# .bashrc
#!/bin/bash

# define some terminal colors
C0='\[\033[00m\]'       # default
C1='\[\033[1;33m\]'     # bold yellow
C2='\[\033[0;31m\]'     # red
C3='\[\033[1;37m\]'     # bold white
C4='\[\033[1;32m\]'     # bold green
C5='\[\033[1;34m\]'     # bold blue
C6='\[\033[1;37m\]'     # bold white
C7='\[\033[0;32m\]'     # green
C8='\[\033[0;34m\]'     # blue
# Reset
Color_Off='\e[0m'       # Text Reset
# Prompt Color Foreground (follow with 0-256 color code, followed by "m" in prompt)
PFG='\e[38;5;'
# Prompt Color Background (follow with 0-256 color code, followed by "m" in prompt)
PBG='\e[48;5;'
# Foreground color (for LS_COLORS)
LFG='38;5;'

# Set the prompt
USER_PROMPT="${PFG}255m${PBG}21m"\\u$Color_Off
HOST_PROMPT="${PFG}255m${PBG}237m"\\h$Color_Off
PS1="$C1($USER_PROMPT$C6@$HOST_PROMPT$C1)$C6-$C1($C5\w$C1)\n$C6\$$C0 "

# Colors for ls files
# di = directory
# fi = file
# ln = link (symlink)
# ex = executable
# pi = fifo 
# so = socket 
# bd = block device 
# cd = character device
# or = orphan (broken) symlink
LS_COLORS="di=${LFG}39:fi=${LFG}15:ln=${LFG}51:ex=${LFG}40:pi=5:so=5:bd=${LFG}202:cd=${LFG}214:or=31:*.rpm=90"

source $HOME/.bash_aliases
