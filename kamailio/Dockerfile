FROM kamailio/kamailio:5.1.3-stretch
LABEL maintainer="sebastian.hug@ins.hsr.ch" 

COPY ./wait-for-it.sh /
COPY ./entrypoint.sh /

RUN apk update && \
    apk add mariadb-client
