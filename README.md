# ras-rm-docker-postgres
Repo for containing docker image definitions for Postgres containers needed by RAS/RM

## Building the docker image

```
make build
```

## Spinning up the docker container

```
make run
```

This uses docker-compose up to spin up the latest version of the sdcplatform/dev-postgres image with external port 6543 (by default)

## Build and run

```
make all
```

## Different requirements

### Alternative databases 

There are a number of SQL dumps of the RAS/RM postgres database in varying stages of initialisation. It is straightforward to build a docker image of the data in one of these states if required.  Just edit the Dockerfile and change 'tests-passed.sql' to the script you desire and run 'make all'.  This will spin up the required database in your local environment.

- init.sql: empty schema. Roughly analagous to the empty-database branch
- service.sql: schema after all the RM services have been started.
- ci-seeded.sql: services.sql but with the addition of the collection instruments seeded
- post-tests.sql: full database dump once the integration tests have completed the first time
- tests-passing.sql: full database dump on successful completion of the integration tests (DEFAULT)

### Empty database

For those looking for the original postgres database docker image that was used to support the integration tests, the docker image for that can be built from the [empty-database branch](https://github.com/ONSdigital/ras-rm-docker-postgres/tree/empty-database) of this repository.
