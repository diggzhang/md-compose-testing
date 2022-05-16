FROM domblack/oracle-jdk8

ENV MAGICBEAN_VERSION="2.6.0"
ENV MB_PIPELINE_PORT=9009
ENV SPARK_OPTS="-Dspark.dynamicAllocation.enabled=false -Dspark.shuffle.service.enabled=false"
ENV SPARK_HOME="/usr/opt/pipeline/spark"

RUN mkdir -p /usr/opt/pipeline/libs \
    && mkdir -p /usr/opt/pipeline/cache \
    && mkdir -p /tmp/modou \
    && chmod 777 /usr/opt/pipeline \
    && chmod 777 /tmp/

WORKDIR /usr/opt/pipeline/
COPY magicbean-$MAGICBEAN_VERSION.tar.gz /usr/opt/pipeline/
COPY spark-2.4.8-bin-hadoop2.6.tgz /usr/opt/pipeline/ 
COPY hive-site.xml /usr/opt/pipeline/ 
RUN tar -zxvf magicbean-$MAGICBEAN_VERSION.tar.gz -C /usr/opt/pipeline/
RUN tar -zxvf spark-2.4.8-bin-hadoop2.6.tgz -C /usr/opt/pipeline/
RUN mv spark-2.4.8-bin-hadoop2.6 spark \ 
    && mv /usr/opt/pipeline/magicbean/libs /usr/opt/pipeline/ \ 
    && mv /usr/opt/pipeline/magicbean/cache /usr/opt/pipeline/ \
    && mv /usr/opt/pipeline/hive-site.xml /usr/opt/pipeline/spark/conf/
EXPOSE 9009
ENTRYPOINT ["java","-classpath","libs/*:.","ai.magicbean.pipeline.MdServer"]
