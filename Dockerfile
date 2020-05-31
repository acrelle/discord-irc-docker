FROM node:12

LABEL maintainer="anthony@relle.co.uk" \
    discord-irc_version="2.8.1"

RUN cd /home/node && \
    npm install zlib-sync erlpack bufferutil utf-8-validate && \
    npm install discord-irc@2.8.1

USER node
VOLUME [ "/opt/discord-irc" ]
CMD [ "/home/node/node_modules/.bin/discord-irc","--config","/opt/discord-irc/config.json" ]

