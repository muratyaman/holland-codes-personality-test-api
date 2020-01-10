const express = require('express');

const newHttpApp = ({ port }) => {
  
  // express http server
  const server = () => {
    return express();
  };
  
  const listen = (http, onListen) => {
    http.get('/', (req, res) => res.json({ ts: new Date() }));
    http.listen(port, onListen);
  };
  
  return {
    server, // 1 new server
    // 2. define/inject routes
    listen, // 3. start listening
  };
};

export default newHttpApp;
