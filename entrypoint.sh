#! /bin/sh

HOST="${HOST}"
PORT="${PORT}"
LISTEN_PORT="${LISTEN_PORT:-1337}"
IDLE_TIMEOUT="${IDLE_TIMEOUT:-60m}"

echo "Proxying port ${LISTEN_PORT} to ${HOST}:${PORT}..."

nc -kl \
   -p "${LISTEN_PORT}" \
   -c "nc '${HOST}' '${PORT}'" \
   -i "${IDLE_TIMEOUT}"
