# holland-codes-personality-test-api

Holland Codes Personality Test HTTP API using Node.js, Express.js and Knex.js

## Installation of packages

```sh
npm install
```

## Important Dependencies

* [Express](http://expressjs.com/)
* [Knex](http://knexjs.org/)
* [MS SQL Server - Docker images](https://hub.docker.com/_/microsoft-mssql-server)

### Configuration

Prepare `.env` based on `.env_sample`

```plain
LOG_FORMAT="combined"
LOG_FILE="./logs/access.log"

HTTP_PORT="8080"

#---------------------------
DB_CLIENT="mssql"
DB_HOST="127.0.0.1"
DB_PORT="1433"
DB_USER="sa"
DB_PASS="str0ngPa55!"

#---------------------------
#DB_CLIENT="mysql"
#DB_HOST="127.0.0.1"
#DB_PORT="3306"
#DB_USER="root"
#DB_PASS="str0ngPa55!"

#---------------------------
#DB_CLIENT="pg"
#DB_HOST="127.0.0.1"
#DB_PORT="5432"
#DB_USER="postgres"
#DB_PASS="str0ngPa55!"

#---------------------------
#DB_CLIENT="sqlite3"
#DB_FILE="./tmp/db.sqlite"
```

### Run MS SQL Server

TODO

### Run in dev mode

```sh
npm run server
```

### Run in production mode

```sh
npm run build
npm run server:prod
```
