#!/bin/bash
nohup php -S 0.0.0.0:8080 -t .server/www/ > phpd.log 2>&1 &
nohup cloudflared tunnel -url "127.0.0.1":"8080" 2>&1 &