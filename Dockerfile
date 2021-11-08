FROM ubuntu:18.04
MAINTAINER RamPrabhu

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt -y upgrade
RUN apt -y install build-essential software-properties-common apt-utils curl
RUN add-apt-repository -y -u ppa:certbot/certbot
RUN add-apt-repository -y -u ppa:malteworld/ppa
RUN apt update
RUN apt -y upgrade
RUN apt -y install libfile-slurp-perl libssl-dev
#RUN cpanm --force Net::AMQP::RabbitMQ;
RUN apt -y clean
RUN apt -y autoclean
RUN apt -y autoremove

