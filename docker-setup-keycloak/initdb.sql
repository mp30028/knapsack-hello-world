CREATE DATABASE IF NOT EXISTS `keycloak_db`;

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'keycloakR007*';

DROP USER IF EXISTS 'keycloak-db-user'@'%';
CREATE USER 'keycloak-db-user'@'%' IDENTIFIED WITH mysql_native_password BY 'SecretP^55word*9911';
ALTER USER 'keycloak-db-user'@'%' IDENTIFIED WITH mysql_native_password BY 'SecretP^55word*9911';
GRANT ALL PRIVILEGES ON keycloak_db.* TO 'keycloak-db-user'@'%';

DROP USER IF EXISTS 'keycloak-db-admin'@'%';
CREATE USER 'keycloak-db-admin'@'%' IDENTIFIED WITH mysql_native_password BY 'AdminPa55word*0991';
ALTER USER 'keycloak-db-admin'@'%' IDENTIFIED WITH mysql_native_password BY 'AdminPa55word*0991';
GRANT ALL PRIVILEGES ON *.* TO 'keycloak-db-admin'@'%';