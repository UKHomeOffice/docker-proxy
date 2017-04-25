#! /bin/sh

cat << EOL > /etc/environment
export HOST="${HOST}"
export PORT="${PORT}"
export LISTEN_PORT="${LISTEN_PORT:-1337}"
EOL

exec /sbin/init
