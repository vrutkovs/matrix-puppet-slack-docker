cd /app

ln -s /data/config.json /app/config.json

if [ ! -f /data/slack-registration.yaml ]; then
  echo -e "$MATRIX_LOCAPART\n$MATRIX_PASSWORD" |  node index.js -r -u $APPSERVICE_URL
fi

exec node index.js
