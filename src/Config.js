const dbConnection = (client, pe) => {
  let connection = null;
  switch (client) {
    case 'mssql':
    case 'mysql':
    case 'pg':
      connection = {
        host: pe.DB_HOST,
        port: pe.DB_PORT,
        user: pe.DB_USER,
        password: pe.DB_PASS,
        database: pe.DB_NAME,
      };
      break;
    case 'sqlite3':
      connection = {
        filename: pe.DB_FILE,
      };
      break;
    default:
      break;
  }
  return connection;
};

const newConfig = (process) => {
  const pe = process.env;
  return {
    http: {
      port: pe.HTTP_PORT || 8080,
    },
    db: {
      client: pe.DB_CLIENT,
      connection: dbConnection(pe.DB_CLIENT, pe),
    },
  };
};

export default newConfig;
