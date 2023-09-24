#!/bin/sh
ssh-keygen -A
exec /usr/sbin/sshd -p 23000 -D -e "$@" 
