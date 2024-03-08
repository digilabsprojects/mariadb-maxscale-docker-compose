#!/bin/bash

if [ -d /docker-entrypoint-initdb.d/tmp ] && [ -z "$MARIADB_MASTER_HOST" ]; then
  envsubst < /docker-entrypoint-initdb.d/tmp/init.sql > /docker-entrypoint-initdb.d/init.sql
fi

rm -rf /docker-entrypoint-initdb.d/tmp

exec docker-entrypoint.sh "$@"