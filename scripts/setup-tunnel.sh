#! /bin/sh

echo "Proxying ${HOST}:${PORT} on port ${LISTEN_PORT}..."
ssh -N -L "0.0.0.0:${LISTEN_PORT}:${HOST}:${PORT}" -o StrictHostKeyChecking=no localhost &
