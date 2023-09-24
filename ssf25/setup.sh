#!/bin/bash
mkdir -p /home/user25/{dev,etc,bin,lib/x86_64-linux-gnu,proc}		
cd /home/user25/dev/
mknod -m 666 null c 1 3
mknod -m 666 tty c 5 0
mknod -m 666 zero c 1 5
mknod -m 666 random c 1 8
chown root:root /home/user25
chmod 0755 /home/user25
cp -v /bin/rbash /home/user25/bin/
cp -vf /etc/{passwd,group} /home/user25/etc/
cp -a /usr/lib /home/user25/
cp -a /usr/lib64 /home/user25/
cp /usr/bin/ls /home/user25/bin/
cp /usr/bin/netstat /home/user25/bin/
cp /usr/bin/ps /home/user25/bin/
#mount -t proc /proc /home/user25/proc
