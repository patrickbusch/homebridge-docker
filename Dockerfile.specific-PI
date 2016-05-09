##################################################
# Install node on pi                             #
##################################################

#RUN curl -sLS https://apt.adafruit.com/add | sudo bash
RUN echo "deb http://apt.adafruit.com/raspbian/ jessie main" >> /etc/apt/sources.list
RUN wget --no-check-certificate -O - -q https://apt.adafruit.com/apt.adafruit.com.gpg.key | apt-key add -
RUN apt-get update
RUN apt-get install -y node
