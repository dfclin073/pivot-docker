FROM ubuntu

RUN useradd -m -s /bin/rbash user25
RUN echo -n 'user25:xQRE5vup4TGNREmA' | chpasswd
RUN echo -n 'root:VKjzCXMSgR8ee92p' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 25000
COPY entrypoint.sh /
COPY motd /etc/motd
COPY sshd_config /etc/ssh/sshd_config
RUN apt update && apt install -y ssh unzip net-tools
RUN apt clean && rm -rf /var/lib/apt/lists/*
RUN mkdir /run/sshd
COPY ssf.zip /tmp/ssf.zip
COPY setup.sh /tmp/setup.sh
RUN /tmp/setup.sh
RUN unzip /tmp/ssf.zip -d /tmp/
RUN cp -fr /tmp/ssf-linux-x86_64-3.0.0/certs /home/user25/
RUN cp /tmp/ssf-linux-x86_64-3.0.0/ssfd /home/user25/bin/
#RUN chmod 775 /home/user15/bin/ssfd
RUN rm -rf /tmp/ssf*
RUN rm -rf /tmp/setup.sh
