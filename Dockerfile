FROM armhf/node:7.9-slim
RUN npm install -g uws --save
RUN npm install -S -g discord-irc

