FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh 
RUN adduser -h /home/user11 -s /usr/bin/lshell -D user11
RUN echo -n 'user11:RVk2GrqKk45bcX9T' | chpasswd
RUN echo -n 'root:CtmxwV4Y9zYPJjig' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 11000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
COPY lshell.conf /etc/lshell.conf

