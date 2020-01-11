import dotenv     from 'dotenv';
import Config     from'./Config';
import DbAdapter  from'./DbAdapter';
import HttpApp    from'./HttpApp';
import HttpRoutes from'./HttpRoutes';
import Logger     from'./Logger';

// read .env file
dotenv.config();

// create new instances
const config    = Config(process);
const logger    = Logger(config.log);
const dbAdapter = DbAdapter(config.db, logger);
const httpApp   = HttpApp(config.http, logger);

const httpServer = httpApp.server();
const httpRouter = httpApp.router();

const httpRoutes = HttpRoutes(config, httpRouter, dbAdapter);
httpRoutes.attachRoutes();

httpServer.use('/v1', httpRouter);

httpServer.get('/health', (req, res) => res.json({ ts: new Date() }));
httpServer.get('/', (req, res) => res.json({ ts: new Date() }));

httpApp.listen(() => {
  console.log(`http app/server listening on port ${config.http.port}!`);
});
