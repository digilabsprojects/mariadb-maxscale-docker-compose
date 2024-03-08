FROM mariadb/maxscale:24.02

RUN yum -y install gettext

COPY .docker/maxscale/maxscale.cnf /etc/maxscale.cnf

COPY .docker/maxscale/maxscale.cnf /etc/template/maxscale.cnf
COPY .docker/maxscale/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
RUN chmod +x /usr/bin/docker-entrypoint.sh