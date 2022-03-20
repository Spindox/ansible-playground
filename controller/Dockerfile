FROM ubuntu:21.04 as ttyd-builder
RUN apt-get update; \
apt-get install -y  build-essential cmake git libuv1-dev libssl-dev libjson-c-dev zlib1g-dev; \
cd; \
git clone https://libwebsockets.org/repo/libwebsockets; \
cd libwebsockets && git checkout v4.3.0; \
mkdir build && cd build; \
cmake -D LWS_WITH_LIBUV=1 ..; \
make && make install; \
ldconfig; \
git clone https://github.com/tsl0922/ttyd.git; \
cd ttyd; \
git checkout 1.6.3; \
mkdir build; \
cd build; \
cmake ..; \
make && make install

FROM ubuntu:21.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
apt-get install -y python3 python3-pip nano vim openssh-server sshpass iputils-ping netcat dnsutils libuv1 && \
rm -rf /var/lib/apt/lists/*; \
update-rc.d ssh defaults && service ssh start
RUN pip3 install --no-cache-dir --upgrade pip; \
pip3 install --no-cache-dir ansible;
RUN echo 'root:ansible' | chpasswd; \
echo 'PermitRootLogin=yes' >> /etc/ssh/sshd_config; \
rm -rf /etc/update-motd.d/*; \
echo > /etc/motd; \
mkdir -p /root/.cache && \
touch /root/.cache/motd.legal-displayed
COPY --from=ttyd-builder /usr/local/bin/ttyd /usr/bin/ttyd
RUN chmod +x /usr/bin/ttyd
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
EXPOSE 9090 22
WORKDIR /root
ENTRYPOINT ["/docker-entrypoint.sh"]
