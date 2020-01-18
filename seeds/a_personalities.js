const rows = [
  {
    id: `r`,
    title_en: `Realistic`,
    title_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
    initial_en: `R`,
    initial_ar: ``,
    alias_en: `Doers`,
    alias_ar: ``,
    description_en: `People who have athletic ability, prefer to work with objects, machines, tools, plants or animals, or to be outdoors.`,
    description_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
  },
  {
    id: `i`,
    title_en: `Investigative`,
    title_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
    initial_en: `I`,
    initial_ar: ``,
    alias_en: `Thinkers`,
    alias_ar: ``,
    description_en: `People who like to observe, learn, investigate, analyze, evaluate, or solve problems.`,
    description_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
  },
  {
    id: `a`,
    title_en: `Artistic`,
    title_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
    initial_en: `A`,
    initial_ar: ``,
    alias_en: `Creators`,
    alias_ar: ``,
    description_en: `People who have artistic, innovating, or institutional abilities and like to work in unstructured situations using their imagination and creativity.`,
    description_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
  },
  {
    id: `s`,
    title_en: `Social`,
    title_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
    initial_en: `S`,
    initial_ar: ``,
    alias_en: `Helpers`,
    alias_ar: ``,
    description_en: `People who like to work with people to enlighten, inform, help, train, or cure them, or are skilled with words.`,
    description_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
  },
  {
    id: `e`,
    title_en: `Enterprising`,
    title_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
    initial_en: `E`,
    initial_ar: ``,
    alias_en: `Persuaders`,
    alias_ar: ``,
    description_en: `People who like to work with people, influencing, persuading, leading or managing for organizational goals or economic gain.`,
    description_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
  },
  {
    id: `c`,
    title_en: `Conventional`,
    title_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
    initial_en: `C`,
    initial_ar: ``,
    alias_en: `Organizers`,
    alias_ar: ``,
    description_en: `People who like to work with data, have clerical or numerical ability, carry out tasks in detail, or follow through on others'' instructions.`,
    description_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
  },
];

const tableName = 'gca_personalities';

exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex(tableName).del()
    .then(function () {
      // Inserts seed entries
      return knex(tableName).insert(rows);
    });
};
