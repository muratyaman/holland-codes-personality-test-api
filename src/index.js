// read .env file
require('dotenv').config();

// load constructors
import Config     from'./Config';
import DbAdapter  from'./DbAdapter';
import HttpApp    from'./HttpApp';
import HttpRoutes from'./HttpRoutes';

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
