#FROM debian:jessie
#FROM resin/rpi-raspbian:jessie
FROM node:6.5.0
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
# Install node                                   #
##################################################

#RUN curl -sLf -o /dev/null 'https://deb.nodesource.com/node_0.12/dists/vivid/Release'
#RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
#RUN echo 'deb https://deb.nodesource.com/node_0.12 vivid  main' > /etc/apt/sources.list.d/nodesource.list
#RUN echo 'deb-src https://deb.nodesource.com/node_0.12 vivid  main' >> /etc/apt/sources.list.d/nodesource.list

#RUN apt-get update
#RUN apt-get install -y nodejs
#RUN ln -s /usr/bin/nodejs /usr/bin/node

##################################################
# Install homebridge                             #
##################################################

#ADD homebridge-src /home/app/homebridge
#ADD config.json /home/app/homebridge/config.json
#RUN chown -R app:app /home/app/homebridge

#WORKDIR /home/app/homebridge
#USER app
#RUN npm install

RUN npm install -g homebridge@0.4.8
RUN npm install -g homebridge-httpeverything@0.1.33

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
#ADD config.json /root/.homebridge/config.json
COPY config.json /root/.homebridge/config.json
RUN cd /root/.homebridge && ls

CMD ["/root/run.sh"]

