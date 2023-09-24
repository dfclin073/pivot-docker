#!/bin/bash
mkdir -p /home/user15/{dev,etc,bin,lib/x86_64-linux-gnu,proc}		
cd /home/user15/dev/
mknod -m 666 null c 1 3
mknod -m 666 tty c 5 0
mknod -m 666 zero c 1 5
mknod -m 666 random c 1 8
chown root:root /home/user15
chmod 0755 /home/user15
cp -v /bin/rbash /home/user15/bin/
cp -vf /etc/{passwd,group} /home/user15/etc/
cp -a /usr/lib /home/user15/
cp -a /usr/lib64 /home/user15/
cp /usr/bin/ls /home/user15/bin/
cp /usr/bin/ps /home/user15/bin/
cp /usr/bin/netstat /home/user15/bin/ 
#mount -t proc /proc /home/user15/proc
