FROM ubuntu:14.04
MAINTAINER progrium "msicsic@yahoo.com"

ADD ./stack/ /build
RUN /build/prepare
