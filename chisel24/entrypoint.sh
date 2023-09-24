#!/bin/sh
ssh-keygen -A
exec /usr/sbin/sshd -p 24000 -D -e "$@" 
