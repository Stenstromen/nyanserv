FROM alpine:latest as build
WORKDIR /
RUN apk add --update --no-cache make git gcc musl-dev && \
    git clone https://github.com/klange/nyancat.git && \
    cd nyancat/ && \
    make && \
    rm -rf /var/cache/apk/*

FROM alpine:latest
RUN apk add --update --no-cache busybox-extras && rm -rf /var/cache/apk/*
COPY --from=build /nyancat/src/nyancat /nyancat
COPY inetd.conf /etc/inetd.conf
COPY docker-entrypoint.sh /
RUN chmod 755 docker-entrypoint.sh && \
    chmod 755 /nyancat && \
    chown -R nobody:nobody /docker-entrypoint.sh /etc/inetd.conf /nyancat

USER nobody
EXPOSE 2323
ENTRYPOINT ["/docker-entrypoint.sh"]