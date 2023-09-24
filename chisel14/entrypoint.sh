#!/bin/sh
ssh-keygen -A
exec /usr/sbin/sshd -p 14000 -D -e "$@" 
