const newConfig = (process) => {
  const pe = process.env;
  return {
    http: {
      port: pe.HTTP_PORT || 8080,
    },
    db: {
      client: pe.DB_CLIENT,
      connection: {
        host: pe.DB_HOST,
        user: pe.DB_USER,
        password: pe.DB_PASS,
        database: pe.DB_NAME,
      },
    },
  };
};

export default newConfig;
