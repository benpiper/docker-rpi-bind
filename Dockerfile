FROM ctarwater/armhf-alpine-rpi-base

MAINTAINER kacis.m@gmail.com

RUN apk --update upgrade && \
    apk add --update bind && \
    rm -rf /var/cache/apk/*

ADD init.sh /init.sh
RUN chmod 750 /init.sh


VOLUME ["/etc/bind", "/var/log/named"]

EXPOSE 53/udp

WORKDIR /etc/bind

CMD ["/init.sh"]