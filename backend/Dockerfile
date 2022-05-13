FROM domblack/oracle-jdk8

WORKDIR /usr/opt/backend
RUN mkdir -p /usr/opt/backend \
  && mkdir -p /root/.magicbean/templates
COPY stem.jar /usr/opt/backend/

EXPOSE 11000

# COPY test.sh ./
# ENTRYPOINT ["/bin/sh", "test.sh"]
ENTRYPOINT ["java","-jar","stem.jar"]
