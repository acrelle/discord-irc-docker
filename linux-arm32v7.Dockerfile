FROM arm32v7/node
LABEL maintainer="anthony@relle.co.uk"
COPY tmp/qemu-arm-static /usr/bin/qemu-arm-static

RUN apt-get update && \
 apt-get install -y libicu-dev && \
 rm -rf /var/lib/apt/lists/*

USER node

RUN cd ~ && npm install uws zlib-sync discordapp/erlpack discord-irc

VOLUME [ "/opt/discord-irc" ]
CMD [ "/home/node/node_modules/.bin/discord-irc","--config","/opt/discord-irc/config.json" ]

