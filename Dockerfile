FROM node:alpine

LABEL maintainer="anthony@relle.co.uk"
LABEL DISCORD-IRC_VERSION=2.6.1

RUN apk --update upgrade && \
 apk add --no-cache --virtual=temporary libicu-dev && \
 rm -rf /var/cache/apk/*

USER node

RUN cd ~ && npm install uws zlib-sync discordapp/erlpack discord-irc

VOLUME [ "/opt/discord-irc" ]
CMD [ "/home/node/node_modules/.bin/discord-irc","--config","/opt/discord-irc/config.json" ]

