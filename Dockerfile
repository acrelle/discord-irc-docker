FROM arm32v7/node:latest
RUN npm update
RUN npm install -S -g discord-irc
