FROM bitnami/nginx:latest
USER 0

COPY server.crt /certs
COPY server.key /certs

COPY server_plural.crt /certs
COPY server_plural.key /certs

COPY default.conf /opt/bitnami/nginx/conf/server_blocks/default.conf
