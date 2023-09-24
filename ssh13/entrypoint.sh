#!/bin/sh
ssh-keygen -A -t rsa
exec /usr/sbin/sshd -p 13000 -D -e "$@" 
