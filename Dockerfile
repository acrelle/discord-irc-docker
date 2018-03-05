FROM arm32v7/node:latest
LABEL maintainer="anthony@relle.co.uk"

RUN apt-get update && \
 apt-get install -y libicu-dev && \
 apt-get autoremove -y && \
 apt-get purge -y 
USER node
RUN cd ~ && npm update && \
 npm install -S uws zlib-sync discordapp/erlpack discord-irc

