FROM alpine:latest as build
WORKDIR /
RUN apk add --update --no-cache make git gcc musl-dev && \
git clone https://github.com/klange/nyancat.git && \
cd nyancat/ && \
make && \
rm -rf /var/cache/apk/*

FROM alpine:latest
RUN apk add --update --no-cache busybox-extras && rm -rf /var/cache/apk/*
COPY inetd.conf /etc/inetd.conf
COPY docker-entrypoint.sh /
RUN chmod 777 docker-entrypoint.sh
COPY --from=build /nyancat/src/nyancat /
EXPOSE 23
ENTRYPOINT ["/docker-entrypoint.sh"]