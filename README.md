A simple, generic, reverse proxy
================================

It is configured using the following environment variables:
* `HOST`, the host to proxy to. e.g. google.com
* `PORT`, the port to proxy to. e.g. 80
* `LISTEN_PORT`, the port to listen for connections on. Default: 1337
* `IDLE_TIMEOUT`, the amount of time to wait before shutting down. e.g. 7200s, 120m, 2h. Default: 60m (one hour)
