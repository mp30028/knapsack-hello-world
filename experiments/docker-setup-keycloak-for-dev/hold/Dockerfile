FROM quay.io/keycloak/keycloak:21.1.0
LABEL maintainer="mp30028" \
      email="mp30028@gmail.com" \
      description="Dockerfile for keycloak"

ARG KC_ADMIN_USERNAME=admin
ARG KC_ADMIN_PASSWORD=password

ARG KC_DB_VENDOR=MYSQL
ARG KC_DB_ADDR=localhost
ARG KC_DB_PORT=3306
ARG KC_DB_DATABASE=keycloak
ARG KC_DB_USER=keycloak
ARG KC_DB_PASSWORD=password

ENV KEYCLOAK_ADMIN=$KC_ADMIN_USERNAME
ENV KEYCLOAK_ADMIN_PASSWORD=$KC_ADMIN_PASSWORD

ENV DB_VENDOR=$KC_DB_VENDOR     
ENV DB_ADDR=$KC_DB_ADDR       
ENV DB_PORT=$KC_DB_PORT       
ENV DB_DATABASE=$KC_DB_DATABASE
ENV DB_USER=$KC_DB_USER
ENV DB_PASSWORD=$KC_DB_PASSWORD

EXPOSE 8080
# ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized", "--hostname-port=18008" ]
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev" ]