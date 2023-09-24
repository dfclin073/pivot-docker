FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh 
RUN adduser -h /home/user14 -s /usr/bin/lshell -D user14
RUN echo -n 'user14:Afc9XprWGRAHFkdZ' | chpasswd
RUN echo -n 'root:XM4tPCbgs7vxx6t9' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 14000
RUN wget  https://github.com/jpillora/chisel/releases/download/1.3.1/chisel_linux_amd64.gz -O /tmp/chisel.gz
RUN gzip -d /tmp/chisel.gz
RUN mv /tmp/chisel /usr/bin/chisel
RUN chmod 755 /usr/bin/chisel
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
COPY lshell.conf /etc/lshell.conf
