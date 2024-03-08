CREATE USER '$MARIADB_MAXSCALE_USER'@'%' IDENTIFIED BY '$MARIADB_MAXSCALE_PASSWORD';
GRANT SELECT ON mysql.user TO '$MARIADB_MAXSCALE_USER'@'%';
GRANT SELECT ON mysql.db TO '$MARIADB_MAXSCALE_USER'@'%';
GRANT SELECT ON mysql.tables_priv TO '$MARIADB_MAXSCALE_USER'@'%';
GRANT SELECT ON mysql.columns_priv TO '$MARIADB_MAXSCALE_USER'@'%';
GRANT SELECT ON mysql.procs_priv TO '$MARIADB_MAXSCALE_USER'@'%';
GRANT SELECT ON mysql.proxies_priv TO '$MARIADB_MAXSCALE_USER'@'%';
GRANT SELECT ON mysql.roles_mapping TO '$MARIADB_MAXSCALE_USER'@'%';
GRANT SHOW DATABASES ON *.* TO '$MARIADB_MAXSCALE_USER'@'%';

CREATE USER '$MARIADB_MONITOR_USER'@'%' IDENTIFIED BY '$MARIADB_MONITOR_PASSWORD';
GRANT REPLICATION CLIENT ON *.* TO '$MARIADB_MONITOR_USER'@'%';
GRANT SUPER, RELOAD on *.* to '$MARIADB_MONITOR_USER'@'%';