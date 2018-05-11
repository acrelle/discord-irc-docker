FROM node
LABEL maintainer="anthony@relle.co.uk"

RUN apt-get update && \
 apt-get install --no-install-recommends -y libicu-dev && \
 rm -rf /var/lib/apt/lists/*

RUN cd /home/node && npm install uws zlib-sync discordapp/erlpack discord-irc

USER node
VOLUME [ "/opt/discord-irc" ]
CMD [ "/home/node/node_modules/.bin/discord-irc","--config","/opt/discord-irc/config.json" ]

