FROM ubuntu:15.04
MAINTAINER Patrick Busch <p@trickbusch.de>

RUN apt-get update

##################################################
# Set environment variables                      #
##################################################

# Ensure UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV TERM xterm


##################################################
# Add app user                                   #
##################################################

RUN useradd --create-home --home-dir /home/app --shell /bin/bash app


##################################################
# Install tools                                  #
##################################################

RUN apt-get install -y curl git apt-transport-https python build-essential make g++ libavahi-compat-libdnssd-dev


##################################################
# Install node                                   #
##################################################

RUN curl -sLf -o /dev/null 'https://deb.nodesource.com/node_0.12/dists/vivid/Release'
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN echo 'deb https://deb.nodesource.com/node_0.12 vivid  main' > /etc/apt/sources.list.d/nodesource.list
RUN echo 'deb-src https://deb.nodesource.com/node_0.12 vivid  main' >> /etc/apt/sources.list.d/nodesource.list

RUN apt-get update
RUN apt-get install -y nodejs
#RUN ln -s /usr/bin/nodejs /usr/bin/node


##################################################
# Install homebridge                             #
##################################################

ADD homebridge-src /home/app/homebridge
ADD config.json /home/app/homebridge/config.json
RUN chown -R app:app /home/app/homebridge

WORKDIR /home/app/homebridge
USER app
RUN npm install


##################################################
# Start                                          #
##################################################

WORKDIR /home/app/homebridge

EXPOSE 51826

CMD ["npm run start"]