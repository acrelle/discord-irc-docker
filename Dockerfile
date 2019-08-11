FROM node:8

LABEL maintainer="anthony@relle.co.uk" \
    discord-irc_version="2.7.2"

RUN cd /home/node && \
    npm install uws@^9.14.0 zlib-sync@^0.1.0 derlpack@discordapp/erlpack discord-irc

USER node
VOLUME [ "/opt/discord-irc" ]
CMD [ "/home/node/node_modules/.bin/discord-irc","--config","/opt/discord-irc/config.json" ]

