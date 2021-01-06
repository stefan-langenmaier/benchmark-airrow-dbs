# Postgres

## Setup

docker run --name postgres -e POSTGRES_PASSWORD=mysecretpassword --rm -p 5432:5432 -d postgis/postgis
docker exec -i postgres  psql -U postgres < setup.sql

## JMeter Run

Make sure that you have the `postgresql-42.2.5.jar` to the classpath.

