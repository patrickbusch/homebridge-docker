# Homebridge-Docker

Docker image for Homebrigde by nfarina

For details see https://github.com/nfarina/homebridge

This is simply wrapping the source in a runnable Docker image for everyone that cannot install the dev environment on his machine or everyone that wants a simple containerized solution.

## Configuration

Copy `config-sample.json` to `config.json` and adapt to your likings.

## Build

`docker build --tag="patrickbusch/homebridge:0.1-SNAPSHOT" .`

## Run
