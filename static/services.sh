#!/bin/bash
code-server --bind-addr 127.0.0.1:8090 --auth none &
/usr/sbin/nginx -g "daemon off;"
