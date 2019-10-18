FROM postgres:9.6.15-alpine

VOLUME /var/lib/postgresql/data

#COPY ./initial-notaryserver.sql /docker-entrypoint-initdb.d 
#COPY ./initial-notarysigner.sql  /docker-entrypoint-initdb.d 
#COPY ./initial-registry.sql  /docker-entrypoint-initdb.d 
#COPY ./docker-healthcheck.sh  /

ENV POSTGRESQL_PASSWORD  POSTGRESQL_PORT POSTGRESQL_USERNAM

EXPOSE 5432
CMD ["postgres"]
