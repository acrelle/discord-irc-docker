FROM resin/raspberry-pi2-node
LABEL maintainer="anthony@relle.co.uk"

RUN [ "cross-build-start" ]

RUN apt-get update && \
 apt-get install -y libicu-dev && \
 rm -rf /var/lib/apt/lists/*

USER node

RUN cd ~ && npm install uws zlib-sync discordapp/erlpack discord-irc

RUN [ "cross-build-end" ]

VOLUME [ "/opt/discord-irc" ]
CMD [ "/home/node/node_modules/.bin/discord-irc","--config","/opt/discord-irc/config.json" ]

