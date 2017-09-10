FROM arm32v7/node:latest
USER node

RUN npm update
RUN npm install -S -g discord-irc

