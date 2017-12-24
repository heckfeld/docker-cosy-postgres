#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER operator;
    CREATE DATABASE cosy;
    GRANT ALL PRIVILEGES ON DATABASE cosy TO operator;
    CREATE DATABASE calib;
    GRANT ALL PRIVILEGES ON DATABASE calib TO operator;
    CREATE DATABASE targets;
    GRANT ALL PRIVILEGES ON DATABASE targets TO operator;
    CREATE DATABASE tgmt;
    GRANT ALL PRIVILEGES ON DATABASE tgmt TO operator;
    CREATE USER tine;
EOSQL

