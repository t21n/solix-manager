#!/usr/bin/env sh

if [ -f /app/.env ]; then
    . /app/.env
else
    #
    export PORT=3000
    export NODE_ENV=production
fi

node /app/.output/server/index.mjs
