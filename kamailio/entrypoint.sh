#!/bin/sh

sleep 30

if [ $(mysql -u root --password=Eav9Coh8xaChei9eangoz5Laiquee7tahre9daetho8shu6ohthaidoh5ohr4ao1 -h mysql_kamailio kamailio -sse "select count(*) from information_schema.tables where table_schema='kamailio' and table_name='domain';") -eq 1 ]; then
    echo "Database already initialized. Skipping."
else
    echo "Database not initialized. Initializing."
    mysqladmin -u root -h mysql_kamailio --password=Eav9Coh8xaChei9eangoz5Laiquee7tahre9daetho8shu6ohthaidoh5ohr4ao1 --force drop kamailio
    kamdbctl create
    mysql -u root -h mysql_kamailio --password=Eav9Coh8xaChei9eangoz5Laiquee7tahre9daetho8shu6ohthaidoh5ohr4ao1 < ./init.sql
fi

kamailio -DD -E
