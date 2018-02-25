FROM arm32v7/node:latest

RUN apt-get update && \
 apt-get install -y libicu-dev && \
 apt-get autoremove -y && \
 apt-get purge -y 

RUN npm update && \
 npm install -S uws zlib-sync discordapp/erlpack discord-irc
USER node
