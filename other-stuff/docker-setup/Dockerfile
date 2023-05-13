FROM mysql:8.0.32
LABEL maintainer="mp30028" \
      email="mp30028@gmail.com" \
      description="Dockerfile for MySql-Server initialised with a seeded db created from create_db.sql script"
ENV MYSQL_ROOT_PASSWORD R007*localhost
ADD create_db.sql /docker-entrypoint-initdb.d
EXPOSE 3306