# discord-irc

Raspberry PI image for discord-irc running on nodejs using arm32v7/node:latest
Raspberry 2 onwards.

[![](https://images.microbadger.com/badges/version/acrelle/rpi-discord-irc.svg)](https://microbadger.com/images/acrelle/rpi-discord-irc "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/acrelle/rpi-discord-irc.svg)](https://microbadger.com/images/acrelle/rpi-discord-irc "Get your own image badge on microbadger.com")[![Build Status](https://jenkins.relle.uk/buildStatus/icon?job=rpi-discord-irc)](https://jenkins.relle.uk/job/rpi-discord-irc)

https://github.com/acrelle/discord-irc-docker

This provides a container for: https://github.com/reactiflux/discord-irc

Prepare your config.json and share the folder as per below

docker run -dt -v discord-irc:/usr/discord-irc acrelle/rpi-discord-irc:latest

# Docker-Compose

~~~
version: "2"
services:
  discord-irc:
    build: .
    image: acrelle/rpi-discord-irc
    container_name: discord-irc
    network_mode: bridge
    restart: always
    volumes:
      - ~/appdata/discord-irc:/usr/discord-irc
~~~
