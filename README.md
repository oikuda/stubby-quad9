# stubby-quad9
Simple docker image for quad9 DNS-over-TLS using stubby. Based on debian:testing-slim.

Includes the following scripts:
- build.sh - build image locally
- start.sh - start container after build or pull
```bash
# --init -> enable interrupting the container with Ctrl+C
# -p 127.0.0.1:53:53/udp -> forward container 53:udp to localhost
docker run --init -p 127.0.0.1:53:53/udp oikuda/stubby-quad9
```
- stop.sh - kill container

Docker hub: [https://hub.docker.com/r/oikuda/stubby-quad9/]()
