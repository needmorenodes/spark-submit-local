FROM alpine:3.8

MAINTAINER needmorenodes

# Install java 8 
RUN apk --update add openjdk8-jre curl tar bash python coreutils procps

RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz | tar -xz -C /usr/local/
RUN cd /usr/local && ln -s spark-2.2.0-bin-hadoop2.7 spark

VOLUME /scripts
COPY scripts/* /scripts/
EXPOSE 4040
EXPOSE 8080

ENTRYPOINT /scripts/spark_submit.sh
CMD []
