FROM nginx:latest

COPY default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /etc/nginx/ssl
COPY 032A116F849F5BC6D0FF84A65B9CF7C5.crt /etc/nginx/ssl
COPY 032A116F849F5BC6D0FF84A65B9CF7C5.key /etc/nginx/ssl