FROM mariadb:10.11.5

RUN apt-get update && apt-get install -y gettext-base

COPY .docker/mariadb/docker-entrypoint.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

COPY .docker/mariadb/init.sql /docker-entrypoint-initdb.d/tmp/init.sql

ENTRYPOINT ["init.sh"]

CMD ["mysqld"]