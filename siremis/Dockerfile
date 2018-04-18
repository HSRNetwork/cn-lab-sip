FROM bitnami/minideb
LABEL maintainer="sebastian.hug@ins.hsr.ch"

WORKDIR /var/www

RUN apt-get update && \
    apt-get install -y git make apache2 php php-mysql php-gd php-curl php-xml libapache2-mod-php php-pear

RUN a2enmod rewrite && \
    a2enmod php7.0 && \
    pear install XML_RPC2 && \
    git clone https://github.com/asipto/siremis

WORKDIR /var/www/siremis

RUN make apache24-conf >> /etc/apache2/sites-available/000-default.conf && \
    make prepare24 && \
    make chown && \
    echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && \
    a2enconf fqdn
