FROM quay.io/keycloak/keycloak:21.1.0
LABEL maintainer="mp30028" \
      email="mp30028@gmail.com" \
      description="Dockerfile for keycloak"
ARG ADMIN_USERNAME=admin
ARG ADMIN_PASSWORD=password
ENV KEYCLOAK_ADMIN=$ADMIN_USERNAME
ENV KEYCLOAK_ADMIN_PASSWORD=$ADMIN_PASSWORD
EXPOSE 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev" ]