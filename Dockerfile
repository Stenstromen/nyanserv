FROM ubuntu:latest

RUN apt-get update && \
apt-get install -y \
nyancat \
xinetd \
&& rm -rf /var/lib/apt/lists/*

COPY xinetd.conf /etc/xinetd.conf
COPY docker-entrypoint.sh /
RUN chmod 777 docker-entrypoint.sh

EXPOSE 23

ENTRYPOINT ["/docker-entrypoint.sh"]
