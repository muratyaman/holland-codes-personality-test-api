import express from 'express';

const newHttpApp = ({ port }, logger) => {
  
  // express http server
  const expApp = express();
  const expRouter = express.Router();
  
  function timeLog (req, res, next) {
    logger.info(new Date(), req.url, 'start');
    next();
    logger.info(new Date(), req.url, 'end');
  }
  
  function consoleLog (req, res, next) {
    console.log(new Date(), req.url);
    next();
  }
  
  expApp.use(timeLog);
  expApp.use(consoleLog);
  
  expApp.use(logger.logger);
  
  const server = () => {
    return expApp;
  };
  
  const router = () => {
    return expRouter;
  };
  
  
  const listen = (onListen) => {
    expApp.listen(port, onListen);
  };
  
  return {
    server, // 1 new server
    // 2. define/inject routes
    router,
    listen, // 3. start listening
  };
};

export default newHttpApp;
