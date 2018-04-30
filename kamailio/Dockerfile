FROM kamailio/kamailio:5.1.3-stretch
LABEL maintainer="sebastian.hug@ins.hsr.ch" 

COPY ./entrypoint.sh /

RUN apt update && \
    apt install -y mariadb-client nano
