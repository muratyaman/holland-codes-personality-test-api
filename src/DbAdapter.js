import knex from 'knex';

const constants = require('./constants');

const newDbAdapter = ({ client, connection }, logger) => {
  
  const db = knex({
    client, // 'mssql',
    connection,
    pool: { min: 1, max: 5 },
    acquireConnectionTimeout: 10000,
  });
  
  /**
   * Run a raw SQL command
   * @param {string} sql e.g. 'select * from users where id = ?',
   * @param {array} params e.g. [ 1 ]
   * @returns {Knex.Raw<any>}
   */
  const query = (sql, params) => db.raw(sql, params);
  
  const table = (name) => db.select().table(name);
  
  // selectors with explicit table names
  const personalities = () => table(constants.TBL_PERSONALITIES);
  const tests         = () => table(constants.TBL_TESTS);
  const questions     = () => table(constants.TBL_QUESTIONS);
  const choices       = () => table(constants.TBL_CHOICES);
  const answers       = () => table(constants.TBL_ANSWERS);
  
  return {
    db,
    query,
    table,
    personalities,
    tests,
    questions,
    choices,
    answers,
  };
};

export default newDbAdapter;
