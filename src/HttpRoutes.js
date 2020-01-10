const constants = require('./constants');

const newHttpRoutes = (config, httpServer, dbAdapter) => {
  
  const makeListHandler = (name) => {
    return async (req, res) => {
      // TODO: add generic filters, pagination, etc.
      const data = await dbAdapter.table(name);
      res.json({ data });
    };
  };
  
  const makeRetrieveHandler = (name, idField = 'id') => {
    return async (req, res) => {
      // TODO: check ID
      const rows = await dbAdapter.table(name).where(idField, req.params.id);
      const data = rows[0] ? rows[0] : null;
      res.json({ data });
    };
  };
  
  const personalityList = makeListHandler(constants.TBL_PERSONALITIES);
  const testList        = makeListHandler(constants.TBL_TESTS);
  const testRetrieve    = makeRetrieveHandler(constants.TBL_TESTS, 'id');
  const questionList    = makeListHandler(constants.TBL_QUESTIONS);
  const choiceList      = makeListHandler(constants.TBL_CHOICES);
  const answerList      = makeListHandler(constants.TBL_ANSWERS);
  
  const attachRoutes = () => {
    // intentionally cause side-effects
    httpServer.route(constants.RUT_PERSONALITIES)
      .get('/', personalityList);
  
    httpServer.route(constants.RUT_TESTS)
      .get('/:id', testRetrieve)
      .get('/', testList);
  
    httpServer.route(constants.RUT_QUESTIONS)
      .get('/', questionList);
  
    httpServer.route(constants.RUT_CHOICES)
      .get('/', choiceList);
    
    httpServer.route(constants.RUT_ANSWERS)
      .get('/', answerList);
    
    return true;
  };
  
  return {
    routes: {
      personalityList,
      testList,
      testRetrieve,
      questionList,
      choiceList,
      answerList,
    },
    attachRoutes,
  };
};

export default newHttpRoutes;
