DROP DATABASE IF EXISTS `test_db`;

CREATE DATABASE `test_db`;

USE `test_db`;

DROP TABLE IF EXISTS `t_user`;


CREATE TABLE t_user (
id int NOT NULL AUTO_INCREMENT,
lastname VARCHAR(255) NOT NULL,
firstname VARCHAR(255),
email VARCHAR(255),
username VARCHAR(255),
password VARCHAR(255),
PRIMARY KEY (id)
);

LOCK TABLES `t_user` WRITE;

INSERT INTO t_user(
	lastname,
	firstname,
	email,
	username,
	password
) VALUES (
	"Nicola",
	"SMITH",
	"nicky.smith@mymail.somewhere.uk",
	"nickys",
	"dummy-password-1"
);
	
	
INSERT INTO t_user(
	lastname,
	firstname,
	email,
	username,
	password
) VALUES (
	"David",
	"BROWN",
	"david.brown@another.mail.uk",
	"dbrown",
	"dummy-password-2"
);

INSERT INTO t_user(
	lastname,
	firstname,
	email,
	username,
	password
) VALUES (
	"Karen",
	"WILSON",
	"karen.wilson@mymail.com",
	"karen",
	"dummy-password-3"
);





/************************************

INSERT INTO t_user(
	lastname,
	firstname,
	email,
	username,
	password
) VALUES (
	?,
	?,
	?,
	?,
	?
); 
************************************/

UNLOCK TABLES;

DROP USER IF EXISTS 'test-db-user'@'%';
CREATE USER 'test-db-user'@'%' IDENTIFIED WITH mysql_native_password BY 'P^ssWord*0009';
ALTER USER 'test-db-user'@'%' IDENTIFIED WITH mysql_native_password BY 'P^ssWord*0009';
GRANT ALL PRIVILEGES ON test_db.* TO 'test-db-user'@'%';

DROP USER IF EXISTS 'test-db-admin'@'%';
CREATE USER 'test-db-admin'@'%' IDENTIFIED WITH mysql_native_password BY 'AdminPassword*009';
ALTER USER 'test-db-admin'@'%' IDENTIFIED WITH mysql_native_password BY 'AdminPassword*009';
GRANT ALL PRIVILEGES ON *.* TO 'test-db-admin'@'%';