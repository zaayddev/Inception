# !/bin/bash

YELLOW='\033[33m'
RESET='\033[0m'

if [ ! -d "/var/lib/mysql/${DB_NAME}" ]
then
    echo -e "${YELLOW}---------- create database and users -----------${RESET}"

    service mysql start;

    # -e : Execute statement and quit.
    mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
    # '%' (wildcard) : autorise l'accès pour n'importe quel host.
    mysql -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_USER_PASSWORD';"
    mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_USER_PASSWORD';"
    # used to reload the MySQL privileges after creating a new user or modifying user permissions. It ensures that the changes take effect immediately.
    mysql -e "FLUSH PRIVILEGES;"
    mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('$DB_ROOT_PASSWORD');"

    sleep 3
    mysqladmin -u root -p${DB_ROOT_PASSWORD} shutdown
fi
# mysqld_safe is the recommended way to start a mysqld server on Unix. mysqld_safe adds some safety 
# features such as restarting the server when an error occurs and logging runtime information to an error log
exec mysqld_safe 