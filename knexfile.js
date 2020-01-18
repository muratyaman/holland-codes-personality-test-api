require('dotenv').config();

const pe = process.env;
const tableName = 'gca_migrations_tests';

module.exports = {

  development: {
    client: 'sqlite3',
    connection: {
      filename: pe.DB_FILE,
    },
    migrations: {
      tableName,
    },
  },

  staging: {
    client: pe.DB_CLIENT,
    connection: {
      host: pe.DB_HOST,
      port: pe.DB_PORT,
      user: pe.DB_USER,
      password: pe.DB_PASS,
      database: pe.DB_NAME,
    },
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName,
    },
  },

  production: {
    client: pe.DB_CLIENT,
    connection: {
      host: pe.DB_HOST,
      port: pe.DB_PORT,
      user: pe.DB_USER,
      password: pe.DB_PASS,
      database: pe.DB_NAME,
    },
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName,
    },
  },

};
