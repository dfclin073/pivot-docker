#!/bin/sh
ssh-keygen -A
exec /usr/sbin/sshd -p 12000 -D -e "$@" 
