#!/bin/bash

if [ -d /docker-entrypoint-initdb.d/tmp ]; then
  if [ -z "$MARIADB_MASTER_HOST" ]; then
    envsubst < /docker-entrypoint-initdb.d/tmp/master-init.sql > /docker-entrypoint-initdb.d/master-init.sql
  fi

  if [ -n "$MARIADB_MASTER_HOST" ]; then
    envsubst < /docker-entrypoint-initdb.d/tmp/slave-init.sql > /docker-entrypoint-initdb.d/slave-init.sql
  fi
fi

rm -rf /docker-entrypoint-initdb.d/tmp

exec docker-entrypoint.sh "$@"