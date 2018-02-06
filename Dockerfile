FROM node:latest

RUN git clone https://github.com/matrix-hacks/matrix-puppet-slack.git /app && \
  cd /app && \
  npm install

COPY start.sh /start.sh

ENTRYPOINT /start.sh
