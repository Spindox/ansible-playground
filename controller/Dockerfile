FROM ubuntu:21.04
ENV DEBIAN_FRONTEND=noninteractive
ADD https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 /usr/bin/ttyd
RUN chmod +x /usr/bin/ttyd
RUN apt-get update && \
apt-get install -y python3 python3-pip nano vim openssh-server sshpass iputils-ping netcat dnsutils && \
rm -rf /var/lib/apt/lists/*
RUN pip3 install --no-cache-dir --upgrade pip
RUN pip3 install --no-cache-dir ansible
RUN update-rc.d ssh defaults && service ssh start
RUN echo 'root:ansible' | chpasswd; \
echo 'PermitRootLogin=yes' >> /etc/ssh/sshd_config; \
rm -rf /etc/update-motd.d/*; \
echo > /etc/motd; \
mkdir -p /root/.cache && \
touch /root/.cache/motd.legal-displayed
EXPOSE 9090 22
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
