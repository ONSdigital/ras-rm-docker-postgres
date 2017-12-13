FROM postgres:9.6.3

ENV POSTGRES_DB postgres 
ENV POSTGRES_USER postgres

ADD create-users.sql /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/create-users.sql

ADD tests-passing.sql /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/tests-passing.sql

