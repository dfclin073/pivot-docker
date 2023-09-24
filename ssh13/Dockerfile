FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh 
RUN adduser -h /home/user13 -s /usr/bin/lshell -D user13
RUN echo -n 'user13:2DscJkmYheWqden3' | chpasswd
RUN echo -n 'root:z95XpxpJ4Lxcv4ne' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 13000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
COPY lshell.conf /etc/lshell.conf

