#name of container: ubuntu-cacti-db
#version of container 0.1
FROM mariadb:10
MAINTAINER FBLGIT
VOLUME /var/lib/mysql
COPY files/ubuntu-cacti-db.sh /data/ubuntu-cacti-db.sh
RUN chmod +x /data/ubuntu-cacti-db.sh
ONBUILD RUN /data/ubuntu-cacti-db.sh
CMD ["mysqld"]
