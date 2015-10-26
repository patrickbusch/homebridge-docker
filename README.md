# Homebridge-Docker

Docker image for Homebrigde by nfarina

For details see https://github.com/nfarina/homebridge

This is simply wrapping the source in a runnable Docker image for everyone that cannot install the dev environment on his machine or everyone that wants a simple containerized solution.

## Configuration

Copy `config-sample.json` to `config.json` and adapt to your likings.

## Build

`docker build --tag="patrickbusch/homebridge:0.1-SNAPSHOT" .`

## Run

### run first time

`docker run -d -p 0.0.0.0:51826:51826 --name homebridge-v0.1-SNAPSHOT patrickbusch/homebridge:0.1-SNAPSHOT`

### stop

`docker stop homebridge-v0.1-SNAPSHOT`

### start

(after stopping)

`docker start homebridge-v0.1-SNAPSHOT`

### remove

(needed before run is possible again)

`docker rm homebridge-v0.1-SNAPSHOT`