import constants from './constants';
import {asyncForEach} from "./utils";
const uuidv4 = require('uuid/v4');

const newHttpRoutes = (config, httpRouter, dbAdapter) => {
  
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
  const answerSave      = async (req, res) => {
    // TODO: validate input
    const input = req.body();
    const { test_id, user_id, attempt_id, answers } = input;
    const data = [];
    await asyncForEach (answers, async (answer) => {
      answer['id']         = uuidv4();
      answer['test_id']    = test_id;
      answer['user_id']    = user_id;
      answer['attempt_id'] = attempt_id;
      // more expected: question_id, choice_id, created_at
      const result = await dbAdapter(constants.TBL_ANSWERS).insert(input).returning('*');
      data.push(result);
    });
    res.json({ data });
  };
  
  const attachRoutes = () => {
    // intentionally cause side-effects
    httpRouter.get(constants.RUT_PERSONALITIES, personalityList);
    httpRouter.get(constants.RUT_TESTS + '/:id', testRetrieve);
    httpRouter.get(constants.RUT_TESTS, testList);
    httpRouter.get(constants.RUT_QUESTIONS, questionList);
    httpRouter.get(constants.RUT_CHOICES, choiceList);
    httpRouter.get(constants.RUT_ANSWERS, answerList);
    httpRouter.post(constants.RUT_ANSWERS, answerSave);
    httpRouter.get('/', (req, res) => res.json({ ts: new Date() }));
    
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
