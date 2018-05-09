# discord-irc
Raspberry PI image for discord-irc running on nodejs using node (amd64 + arm32v7 for Raspberry 2 onwards)

## Source
https://github.com/acrelle/discord-irc-docker

## Build

[![](https://images.microbadger.com/badges/version/acrelle/discord-irc.svg)](https://microbadger.com/images/acrelle/discord-irc "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/acrelle/discord-irc.svg)](https://microbadger.com/images/acrelle/discord-irc "Get your own image badge on microbadger.com")![](https://travis-ci.com/acrelle/discord-irc-docker.svg?branch=master)

https://hub.docker.com/r/acrelle/discord-irc/

### Supported architectures

`amd64`,`arm32v7`

## Usage
This provides a container for: https://github.com/reactiflux/discord-irc

Prepare your config.json and share the folder as per below

```
docker run -dt -v discord-irc:/opt/discord-irc acrelle/discord-irc
```

## Docker-Compose

Sample usage:

~~~
version: "2"
services:
  discord-irc:
    build: .
    image: acrelle/discord-irc
    container_name: discord-irc
    network_mode: bridge
    restart: unless-stopped
    volumes:
      - ~/appdata/discord-irc:/opt/discord-irc
~~~
