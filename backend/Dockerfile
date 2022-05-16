FROM domblack/oracle-jdk8

ENV MAGICBEAN_VERSION="2.6.0"

WORKDIR /usr/opt/backend
RUN mkdir -p /usr/opt/backend \
  && mkdir -p /root/.magicbean/templates
COPY stem-$MAGICBEAN_VERSION.jar /usr/opt/backend/
RUN mv /usr/opt/backend/stem-$MAGICBEAN_VERSION.jar /usr/opt/backend/stem.jar

EXPOSE 11000
ENTRYPOINT ["java","-jar","stem.jar"]
