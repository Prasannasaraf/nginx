#!/usr/bin/env sh
set -eu

envsubst < /configvars.js.template > /public/configvars.js

exec "$@"