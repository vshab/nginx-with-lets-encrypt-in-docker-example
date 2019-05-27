FROM nginx:1.16-alpine

# Install certbot
RUN apk add --no-cache certbot

# Copy renew cron script
COPY nginx/renew /etc/periodic/daily/renew
RUN chmod +x /etc/periodic/daily/renew

RUN mkdir /var/lib/certbot

# Copy entrypoint
COPY nginx/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# nginx config
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Something to serve
RUN mkdir /var/lib/website
COPY index.html /var/lib/website/

ENTRYPOINT [ "../entrypoint.sh" ]
