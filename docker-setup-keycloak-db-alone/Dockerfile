FROM mysql:8.0.32
LABEL maintainer="mp30028" \
      email="mp30028@gmail.com" \
      description="Dockerfile for MySql-Server to be initialised with user and empty db for keycloak"
ENV MYSQL_ROOT_PASSWORD keycloakR007*
ADD initdb.sql /docker-entrypoint-initdb.d
EXPOSE 3306