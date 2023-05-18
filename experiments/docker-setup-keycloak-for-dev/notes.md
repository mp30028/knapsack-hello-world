## 1. Create a keycloak image with admin user and password setup

Create an image using a `Dockerfile` and the `docker build` command

**Dockerfile**
```dockerfile {.line-numbers}
FROM quay.io/keycloak/keycloak:21.1.0
LABEL maintainer="mp30028" \
      email="mp30028@gmail.com" \
      description="Dockerfile for keycloak"
ARG ADMIN_USERNAME=admin
ARG ADMIN_PASSWORD=password
ENV KEYCLOAK_ADMIN=$ADMIN_USERNAME
ENV KEYCLOAK_ADMIN_PASSWORD=$ADMIN_PASSWORD
EXPOSE 8080
# ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized", "--hostname-port=18008" ]
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev" ]
```


**Building the image**
Build the image with the following command
```
docker build \
--build-arg ADMIN_USERNAME=admin \
--build-arg ADMIN_PASSWORD=KeyC10ak \
-t keycloak-test .
```
This will create an image with a keycloak admin user called `admin` and the password set for this user to `KeyC10ak `

### Points to note
#### The `--build-arg`  options and defaults
If the `--build-arg` options are not provided to the build commands then the defaults set in the *Dockerfile* (username='admin' and password set to 'password') are used