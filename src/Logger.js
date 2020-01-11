import morgan from 'morgan';
import fs from 'fs';
import path from 'path';

const newLogger = ({ file }) => {
  // create a write stream (in append mode)
  const accessLogStream = fs.createWriteStream(path.join(__dirname, '../', file), { flags: 'a' });
  const logger = morgan('combined', { stream: accessLogStream });
  return {
    logger,
    info: (...args) => {
      console.info.call(null, args);
    },
  };
};

export default newLogger;
