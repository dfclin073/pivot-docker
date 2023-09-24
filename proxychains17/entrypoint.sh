#!/bin/sh
ssh-keygen -A -t rsa
exec /usr/sbin/sshd -p 17000 -D -e "$@" 
