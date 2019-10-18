FROM postgres:9.6.15-alpine

VOLUME /var/lib/postgresql/data

ADD ./initial-notaryserver.sql /docker-entrypoint-initdb.d 
COPY ./initial-notarysigner.sql  /docker-entrypoint-initdb.d 
COPY ./initial-registry.sql  /docker-entrypoint-initdb.d 
COPY ./docker-healthcheck.sh  /



EXPOSE 5432
CMD ["postgres"]
