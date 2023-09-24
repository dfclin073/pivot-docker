FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh 
RUN adduser -h /home/user12 -s /usr/bin/lshell -D user12
RUN echo -n 'user12:48EW4qXM6rnZfUkV' | chpasswd
RUN echo -n 'root:UL4odD85kL49Xqoe' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 12000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
COPY lshell.conf /etc/lshell.conf
COPY socat /usr/bin/socat
