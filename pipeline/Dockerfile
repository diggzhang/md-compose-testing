# syntax=docker/dockerfile:1

FROM domblack/oracle-jdk8

RUN mkdir -p /usr/opt/pipeline/libs \
    && mkdir -p /usr/opt/pipeline/cache \
    && mkdir -p /usr/opt/pipeline/spark \
    && mkdir -p /tmp/modou 

ENV SPARK_HOME="/usr/opt/pipeline/spark"
RUN echo $SPARK_HOME

WORKDIR /usr/opt/pipeline/
EXPOSE 9009
ENTRYPOINT ["java","-classpath","libs/*:.","ai.magicbean.pipeline.MdServer"]
