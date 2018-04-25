FROM arm32v7/node
LABEL maintainer="anthony@relle.co.uk"

RUN apt-get update && \
 apt-get install -y libicu-dev && \
 apt-get autoremove -y && \
 apt-get purge -y 
USER node
RUN cd ~ && npm update && \
 npm install -S uws zlib-sync discordapp/erlpack discord-irc

VOLUME [ "/usr/discord-irc" ]
ENTRYPOINT [ "/home/node/node_modules/.bin/discord-irc","--config","/usr/discord-irc/config.json" ]

