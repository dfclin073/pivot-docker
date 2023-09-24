FROM andrius/alpine-lshell

RUN apk add --update --no-cache openssh
RUN apk add iproute2 
RUN adduser -h /home/user16 -s /usr/bin/lshell -D user16
RUN echo -n 'user16:k8dNvDRxnEdAwaXK' | chpasswd
RUN echo -n 'root:PARzXizz9kR3xgvb' | chpasswd
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN apk add py3-psutil
EXPOSE 16000
COPY entrypoint.sh /
COPY checkconfig.py /usr/lib/python3.8/site-packages/lshell/checkconfig.py
COPY motd /etc/motd
COPY lshell.conf /etc/lshell.conf
COPY MSF_RAT /home/user16/MSF_RAT
COPY server.py /home/user16/server.py
RUN chown user16 /home/user16/server.py
RUN chown user16 /home/user16/MSF_RAT
USER user16
ENTRYPOINT ["/entrypoint.sh"]

