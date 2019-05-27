#!/bin/sh

# Get certs
certbot certonly -n -d example.com,www.example.com \
  --standalone --preferred-challenges http --email example@gmail.com --agree-tos --expand

# Kick off cron
/usr/sbin/crond -f -d 8 &

# Start nginx
/usr/sbin/nginx -g "daemon off;"
