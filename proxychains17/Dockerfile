FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh 
RUN adduser -h /home/user17 -s /usr/bin/lshell -D user17
RUN echo -n 'user17:Q3DKQVanLHkMF5id' | chpasswd
RUN echo -n 'root:9v6vdbjiUG8LaqbG' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 17000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
COPY lshell.conf /etc/lshell.conf

