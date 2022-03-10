# syntax=docker/dockerfile:1

FROM java:8-jdk-alpine

RUN mkdir -p /usr/opt/pipeline/libs \
    && mkdir -p /usr/opt/pipeline/cache 

WORKDIR /usr/opt/pipeline/
EXPOSE 9009
ENTRYPOINT ["java","-classpath","libs/*:.","ai.magicbean.pipeline.MdServer"]

