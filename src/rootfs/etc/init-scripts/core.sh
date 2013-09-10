#!/usr/bin/sh

# Supress kernel messages
/usr/bin/dmesg -n 1

# Mount /proc and /sys
mount -t proc none /proc
mount -t sysfs none /sys

# Clear console
clear

# Trigger SysRQ
echo s> /proc/sysrq-trigger

# Change Shell prompt (PS1)
export PS1='-> '

# Load german Keylayout
loadkmap < /etc/keyboard-layouts/de.bmap

# Start Shell and bind to tty1
setsid sh -c 'exec sh </dev/tty1 >/dev/tty1 2>&1'

# Finished
exit 0