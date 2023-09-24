FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh 
RUN adduser -h /home/user21 -s /usr/bin/lshell -D user21
RUN echo -n 'user21:pMLE7Q2EMu2UeCPb' | chpasswd
RUN echo -n 'root:wYjjBjHy6wT5Y56y' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 21000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
COPY lshell.conf /etc/lshell.conf

