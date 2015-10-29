# Homebridge-Docker

Docker image for Homebrigde by nfarina

For details see https://github.com/nfarina/homebridge

This is simply wrapping the source in a runnable Docker image for everyone that cannot install the dev environment on his machine or everyone that wants a simple containerized solution.

## Configuration

Copy `config-sample.json` to `config.json` and adapt to your likings.

## Raspberry PI

When building and running on a Raspberry PI, use `homebridge-pi.sh` instead of `homebridge.sh`

## Build

`./homebridge.sh build`

## Run

### run first time

`./homebridge.sh run`

### stop

`./homebridge.sh stop`

### start

(after stopping)

`./homebridge.sh start`

### remove

(needed before run is possible again)

`./homebridge.sh remove`

### rerun

Stops and removes the containers, then performs run again

`./homebridge.sh rerun`

### attach

Attaches to the running container

`./homebridge.sh attach`

### logs

Diplays stdout log of the running container

`./homebridge.sh logs`