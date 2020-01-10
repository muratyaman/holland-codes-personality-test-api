// read .env file
require('dotenv').config();

// load constructors
const Config     = require('./src/Config');
const DbAdapter  = require('./src/DbAdapter');
const HttpApp    = require('./src/HttpApp');
const HttpRoutes = require('./src/HttpRoutes');

// create new instances
const config    = Config(process);
const dbAdapter = DbAdapter(config.db);
const httpApp   = HttpApp(config.http);

const httpServer = httpApp.server();
const httpRoutes = HttpRoutes(config, httpServer, dbAdapter);

httpRoutes.attachRoutes();

httpApp.listen(() => {
  console.log(`http app/server listening on port ${port}!`);
});
