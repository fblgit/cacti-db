#name of container: ubuntu-cacti-db
#version of container 0.1
ONBUILD mariadb:10
MAINTAINER FBLGIT
VOLUME /var/lib/mysql
COPY files/ubuntu-cacti-db.sh /data/ubuntu-cacti-db.sh
RUN chmod +x /data/ubuntu-cacti-db.sh

CMD ["/data/ubuntu-cacti-db.sh"]
