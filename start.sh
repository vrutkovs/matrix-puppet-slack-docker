cd /app

ln -s /data/config.json /app/config.json

if [ ! -f /data/slack-registration.yaml ]; then
  touch /tmp/creds
  echo $MATRIX_LOCALPART >> /tmp/creds
  echo $MATRIX_PASSWORD >> /tmp/creds
  node index.js -r -u $APPSERVICE_URL < /tmp/creds
  rm /tmp/creds
fi

exec node index.js
