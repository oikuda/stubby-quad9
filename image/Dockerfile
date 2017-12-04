FROM debian:testing-slim
LABEL maintainer="Valter Vasic <valter.vasic@gmail.com>"

ADD . /build

RUN /build/install.sh

EXPOSE 53/UDP

ENTRYPOINT ["/usr/bin/stubby","-l"]
