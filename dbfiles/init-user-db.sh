#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<- EOSQL
    CREATE USER marior WITH PASSWORD 'linux';
    ALTER USER marior WITH SUPERUSER;
    CREATE DATABASE quiniela6;
    GRANT ALL PRIVILEGES ON DATABASE quiniela6 TO marior;
    GRAN ALL ON SCHEMA public TO marior; 
EOSQL