#!/bin/bash
set -e

# use env variables set in /init_influxdb.sh
# add custom init and/or create additional databases here

MY_INFLUXDB_DB=telegraf

CREATE_DB_QUERY="CREATE DATABASE $MY_INFLUXDB_DB"

$INFLUX_CMD "$CREATE_DB_QUERY"