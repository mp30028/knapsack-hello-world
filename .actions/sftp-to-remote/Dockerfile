# Container image that runs your code
FROM ubuntu:20.04
RUN apt update
RUN apt -y upgrade
RUN apt -y install openssh-client
COPY hello-world-jar /hello-world-jar
COPY entrypoint.sh /entrypoint.sh
RUN chmod 0700 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
