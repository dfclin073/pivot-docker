FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh
RUN apk add iproute2 
RUN adduser -h /home/user26 -s /usr/bin/lshell -D user26
RUN echo -n 'user26:RtLfomGE8pZHBnaX' | chpasswd
RUN echo -n 'root:w6Kyc2UhFCWS55tH' | chpasswd
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN apk add py3-psutil
EXPOSE 26000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY lshell.conf /etc/lshell.conf
COPY MSF_RAT /home/user26/MSF_RAT
COPY server.py /home/user26/server.py
RUN chown user26 /home/user26/server.py
RUN chown user26 /home/user26/MSF_RAT
USER user26
ENTRYPOINT ["/entrypoint.sh"]

