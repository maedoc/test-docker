FROM phusion/baseimage:0.9.19
MAINTAINER mmwoodman@gmail.com

ADD 70-python.sh /root/

RUN apt-get update
RUN apt-get install -y build-essential libssl-dev

RUN bash /root/70-python.sh

RUN apt-get remove build-essential libssl-dev
RUN apt-get autoremove
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
