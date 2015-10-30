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