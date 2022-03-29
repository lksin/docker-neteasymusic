#!/bin/sh -e
sed -i 's/2517871772/$QQ/' /usr/src/app/QQMusicApi/bin/config.js

cd /usr/src/app/NeteaseCloudMusicApi && npm run start &
sleep 5

cd /usr/src/app/QQMusicApi && yarn start &
sleep 5

exec "$@"
