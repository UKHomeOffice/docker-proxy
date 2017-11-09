#! /bin/sh

export HOST="${HOST}"
export PORT="${PORT}"
export LISTEN_PORT="${LISTEN_PORT:-1337}"

exec -- nc -l -p "${LISTEN_PORT}" -c "nc '${HOST}' '${PORT}'"
