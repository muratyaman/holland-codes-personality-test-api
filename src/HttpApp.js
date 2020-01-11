import express from 'express';

const newHttpApp = ({ port }, logger) => {
  
  // express http server
  const expApp = express();
  const expRouter = express.Router();
  
  expApp.use(logger.logger);
  
  const server = () => {
    return expApp;
  };
  
  const router = () => {
    return expRouter;
  };
  
  expApp.use(function timeLog (req, res, next) {
    logger.info(Date.now(), 'start');
    next();
    logger.info(Date.now(), 'end');
  });
  
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
