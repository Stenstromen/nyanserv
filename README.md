# Nyanserv

Dockerfile for klanges "Nyancat CLI", Telnet mode 

[github.com/klange](https://github.com/klange/nyancat)

## Demo

Demo available at Stenstromen/nyanserv. (linux/arm64)

```
docker run -d --rm -p 23:23 stenstromen/nyanserv
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
docker run --rm -p 23:23 nyanserv
```

## Connect

```
nc localhost 23 || telnet localhost 23
```

