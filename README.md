![License MIT](https://img.shields.io/badge/license-MIT-blue.svg) [![Docker Automated build](https://img.shields.io/docker/automated/dragas/heralding.svg)](https://hub.docker.com/r/dragas/heralding) [![](https://img.shields.io/docker/stars/dragas/heralding.svg)](https://hub.docker.com/r/dragas/heralding) [![](https://img.shields.io/docker/pulls/dragas/heralding.svg)](https://hub.docker.com/r/dragas/heralding)

# Heralding
Heralding Alpine image for Docker.

## About
Sometimes you just want a simple honeypot that collects credentials, nothing more. Heralding is that honeypot! Currently the following protocols are supported: ftp, telnet, ssh, http, https, pop3, pop3s, imap, imaps, smtp, vnc, postgresql and socks5.

## Running
This Docker image will save its data on /heralding, so be sure to keep its contents safe.
To run it with all its ports mapped, launch with something like this

```bash
$ docker run --rm -d -v /yourlogpath:/heralding -p 5900:5900 -p 80:80 -p443:443 -p 110:110 -p 143:143 -p 21:21 -p 993:993 -p 995:995 -p 25:25 -p 5432:5432 -p 23:23 -p 22:22 -p 1080:1080 dragas/heralding
```
