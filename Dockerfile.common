#FROM debian:jessie
#FROM resin/rpi-raspbian:jessie
MAINTAINER Patrick Busch <p@trickbusch.de>

RUN apt-get update

##################################################
# Set environment variables                      #
##################################################

# Ensure UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm


##################################################
# Add app user                                   #
##################################################

#RUN useradd --create-home --home-dir /home/app --shell /bin/bash app


##################################################
# Install tools                                  #
##################################################

RUN apt-get install -y curl wget git apt-transport-https python build-essential make g++ libavahi-compat-libdnssd-dev libkrb5-dev vim net-tools
RUN alias ll='ls -alG'

#####SPECIFIC#####


##################################################
# Install homebridge                             #
##################################################

#ADD homebridge-src /home/app/homebridge
#ADD config.json /home/app/homebridge/config.json
#RUN chown -R app:app /home/app/homebridge

#WORKDIR /home/app/homebridge
#USER app
#RUN npm install

RUN npm install -g homebridge
RUN npm install -g homebridge-openhab

##################################################
# Start                                          #
##################################################

USER root
#WORKDIR /home/app/homebridge

RUN mkdir -p /var/run/dbus
#VOLUME /var/run/dbus

EXPOSE 5353 51826

#CMD ["npm", "run", "start"]
ADD run.sh /root/run.sh

RUN mkdir /root/.homebridge
ADD config.json /root/.homebridge/config.json

CMD ["/root/run.sh"]

