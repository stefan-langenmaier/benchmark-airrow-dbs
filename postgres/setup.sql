CREATE DATABASE bench;
\c bench
CREATE EXTENSION postgis;
CREATE EXTENSION pg_similarity;
CREATE TABLE if not exists bench (id UUID PRIMARY KEY, location GEOMETRY(Point, 4326), status VARCHAR(255));
CREATE INDEX geo_idx ON bench  USING GIST (location);

