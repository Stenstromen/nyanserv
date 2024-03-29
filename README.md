[![Phyaddr CI/CD](https://github.com/Stenstromen/nyanserv/actions/workflows/main.yml/badge.svg)](https://github.com/Stenstromen/phyaddr/actions/workflows/main.yml)[![Phyaddr Snyk Container Scanning](https://github.com/Stenstromen/nyanserv/actions/workflows/snyk.yml/badge.svg)](https://github.com/Stenstromen/phyaddr/actions/workflows/snyk.yml)
# Nyanserv

[![Nyancats](http://nyancat.dakko.us/nyancat.png)](http://nyancat.dakko.us/nyancat.png)

Dockerfile for klanges "Nyancat CLI", Telnet mode 

[github.com/klange](https://github.com/klange/nyancat)

Uses:
* alpine:latest
* inetd (busybox-extras)
* nyancat

Builds project from [github.com/klange](https://github.com/klange/nyancat) and deploys via inetd (busybox-extras)

## Demo

Demo available at Stenstromen/nyanserv. (linux/arm64)

```
docker run -d --rm -p 23:23 stenstromen/nyanserv:latest
```

## Clone

```
git clone https://github.com/Stenstromen/nyanserv.git
```

## Build

```
docker build -t nyanserv nyanserv/.
```

## Run

```
docker run -d --rm -p 23:23 nyanserv
```

## Connect

```
nc localhost 23 || telnet localhost 23
```

