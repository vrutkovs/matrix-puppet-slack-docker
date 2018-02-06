ln -s /data/config.json /config.json

if [ ! -f /data/slack-registration.yaml ]; then
  node index.js -r -u $APPSERVICE_URL
fi

exec node index.js
