#!/bin/sh
ssh-keygen -A
exec /usr/sbin/sshd -p 22000 -D -e "$@" 
