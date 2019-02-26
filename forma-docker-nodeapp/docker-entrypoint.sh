#!/bin/bash
set -e

if [ "$1" = 'start' ]; then
  exec npm start
elif [ "$1" = 'debug' ]; then
  DEBUG=true exec npm start
fi

exec "$@"