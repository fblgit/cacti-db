#!/bin/bash

PWD=$MYSQL_PASSWORD
USR=$MYSQL_USER
DB=$MYSQL_DATABASE

echo "GRANT ALL PRIVILEGES ON $DB.* TO $USR@% IDENTIFIED BY \'$PWD\';
FLUSH PRIVILEGES;">/data/sql_import.sql

cp /data/sql_import.sql /docker-entrypoint-initdb.d/
