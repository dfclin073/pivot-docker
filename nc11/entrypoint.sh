#!/bin/sh
ssh-keygen -A
exec /usr/sbin/sshd -p 11000 -D -e "$@" 
