#!/bin/bash
set -e

mysql -uroot -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
GRANT ALL ON wordpress.* TO wordpress@'%' IDENTIFIED BY 'wordpress';
CREATE DATABASE wordpress;
EOSQL

# mysql -uroot -p"$MYSQL_ROOT_PASSWORD" -Dwordpress < /docker-entrypoint-initdb.d/wordpress.dmp

