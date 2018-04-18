FROM kamailio/kamailio-ci:master-alpine
LABEL maintainer="sebastian.hug@ins.hsr.ch" 

COPY ./wait-for-it.sh /
COPY ./entrypoint.sh /

RUN apk update && \
    apk add mariadb-client

