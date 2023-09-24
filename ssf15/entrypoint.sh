#!/bin/sh
mount -t proc /proc /home/user15/proc
ssh-keygen -A
exec /usr/sbin/sshd -p 15000 -D -e "$@" 
