#!/bin/bash
set -x
/ngrok start --config /movies/yml/tcp.yml --config /movies/yml/http.yml --log=stdout "$@"
