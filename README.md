# ras-rm-docker-postgres
Repo for containing docker image definitions for Postgres containers needed by RAS/RM

This is a bit of a work in progress containing the following folders:

- vanilla - this is the original docker postgres image for RM with the groundzero scripts for each of the services run but otherwise no data
- int-tests - this contains SQL files at various stages of running the integration tests.  The Dockerfile requires work but will create a docker image containing all the data post-integration-testing.  The purpose is to provide a useful database baseline for development.

# Integration test sql files

init.sql - empty schema. Roughly analagous to the vanilla image
service.sql - schema after all the RM services have been started.
ci-seeded.sql - services.sql but with the addition of the collection instruments seeded
post-tests.sql - full database dump once the integration tests have completed
