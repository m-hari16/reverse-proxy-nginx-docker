FROM nginx:1.10-alpine

#  default conf for proxy service
COPY ./production/nginx.conf /etc/nginx/nginx.conf

# NOT FOUND response
COPY ./notfound.html /var/www/html/notfound.html

#ssl mode
COPY ./certs/cert.pem /etc/ssl/certs/cert.pem

COPY ./certs/key.pem /etc/ssl/private/key.pem

COPY ./certs/cloudflare.crt /etc/ssl/certs/cloudflare.crt

COPY ./production/index.html /var/www/html/index.html

# Proxy configurations
COPY ./includes/ /etc/nginx/includes/

#conf
COPY ./production/site-availables/ /etc/nginx/includes/site-availables/