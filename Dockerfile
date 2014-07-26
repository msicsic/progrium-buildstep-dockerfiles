FROM ubuntu:14.04
MAINTAINER progrium "msicsic@yahoo.com"

RUN apt-get install -y python-software-properties && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer
    
RUN echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/environment

ADD ./stack/ /build
RUN /build/prepare
