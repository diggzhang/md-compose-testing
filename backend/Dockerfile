# syntax=docker/dockerfile:1

FROM domblack/oracle-jdk8

RUN mkdir -p /usr/opt/backend \
  && mkdir -p /root/.magicbean
COPY ./stem.jar /usr/opt/backend/

WORKDIR /usr/opt/backend
EXPOSE 11000
ENTRYPOINT ["java","-jar","stem.jar"]
