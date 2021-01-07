# Benchmark airrow dbs

The different folder benchmark a typical airrow database access pattern under high load for the specific databases.

## Background

Initially the setup was done with mariadb and no geo support (columns, functions or indices). So this directory can be taken as reference.
On my system I can handle about 120 geo queries per second, with less then 10k entries.
