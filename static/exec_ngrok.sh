#!/bin/bash
set -x
/ngrok start --config /movies/yml/config.yml --log=stdout "$@"
