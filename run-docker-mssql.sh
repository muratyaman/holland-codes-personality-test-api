#!/bin/bash

source .env

SA_PASSWORD=$DB_PASS
ACCEPT_EULA=Y

#default MSSQL_PID
#MSSQL_PID=Developer
MSSQL_PID=Express

docker run -p "${DB_PORT}:${DB_PORT}" -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu

# set env variables when running command
#docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=str0ngPa55!' -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu
