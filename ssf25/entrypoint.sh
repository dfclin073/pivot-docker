#!/bin/sh
mount -t proc /proc /home/user25/proc 
ssh-keygen -A
exec /usr/sbin/sshd -p 25000 -D -e "$@" 
