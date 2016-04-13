#!/bin/bash

if [ -v MYSQL_ROOT_PASSWORD ]; then
   PWD=$MYSQL_ROOT_PASSWORD
   USR=root
fi
if [ -v MYSQL_PASSWORD ]; then
   PWD=$MYSQL_PASSWORD
   USR=$MYSQL_USER
 fi

echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO $USR@% IDENTIFIED BY $PWD;
FLUSH PRIVILEGES;">/data/sql_import.sql

cp /data/sql_import.sql /docker-entrypoint-initdb.d/
