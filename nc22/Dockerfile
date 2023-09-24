FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh 
RUN adduser -h /home/user22 -s /usr/bin/lshell -D user22
RUN echo -n 'user22:KtuFy3jppQ9Mtg9F' | chpasswd
RUN echo -n 'root:PmMMayE6VtZ5eynQ' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
COPY lshell.conf /etc/lshell.conf

