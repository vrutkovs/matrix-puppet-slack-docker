FROM node:latest

RUN git clone https://github.com/matrix-hacks/matrix-puppet-slack.git /app && \
  cd /app && \
  npm install

COPY start.sh /app/start.sh

ENTRYPOINT /app/start.sh
