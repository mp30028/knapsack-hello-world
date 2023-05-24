#!/bin/bash

set -eu

keycloak_db_admin_username=$1
keycloak_db_admin_password=$2
keycloak_db_host=$3
keycloak_db_name=$4
new_keycloak_db_user=$5
new_keycloak_db_user_password=$6


mysql -u$keycloak_db_admin_username -p$keycloak_db_admin_password --host=$keycloak_db_host -e"SET @new_user='$new_keycloak_db_user', @new_user_password='$new_keycloak_db_user_password', @db_name='$keycloak_db_name'; \. /scripts/create-keycloak-db-user/create-keycloak-db-user.sql"

echo 'user setup completed successfully'
exit 0