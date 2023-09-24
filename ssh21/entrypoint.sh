#!/bin/sh
ssh-keygen -A -t rsa
exec /usr/sbin/sshd -p 21000 -D -e "$@" 
