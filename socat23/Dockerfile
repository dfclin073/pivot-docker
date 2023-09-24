FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh 
RUN adduser -h /home/user23 -s /usr/bin/lshell -D user23
RUN echo -n 'user23:zqbo8SmABC8L7VQG' | chpasswd
RUN echo -n 'root:fC3DBN3AJ4KFkKFT' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 23000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
COPY lshell.conf /etc/lshell.conf
COPY socat /usr/bin/socat
