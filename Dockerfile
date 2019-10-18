FROM postgres:9.6.15-alpine

VOLUME /var/lib/postgresql/data

COPY ./initial-notaryserver.sql /docker-entrypoint-initdb.d 
COPY ./initial-notarysigner.sql  /docker-entrypoint-initdb.d 
COPY ./initial-registry.sql  /docker-entrypoint-initdb.d 
COPY ./docker-healthcheck.sh  /

ENV POSTGRESQL_HOST=127.0.0.1 POSTGRESQL_PORT=5432 POSTGRESQL_USERNAME=postgres POSTGRESQL_PASSWORD=root123 POSTGRESQL_DATABASE=registry POSTGRESQL_SSLMODE=disable

EXPOSE 5432
CMD ["postgres"]
