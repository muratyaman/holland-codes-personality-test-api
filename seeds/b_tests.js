const rows = [
  {
    id: 1,
    title_en: `Holland Codes Personality Test`,
    title_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
    description_en: `This is based on Dr. John Holland's theory that people and work environments can be loosely classified into six different groups. Each of the letters above corresponds to one of the six groups described in the following pages.\nDifferent people's personalities may find different environments more to their liking. While you may have some interests in and similarities to several of the six groups, you may be attracted primarily to two or three of the areas. These two or three letters are your \"Holland Code.\" For example, with a code of \"RES\" you would most resemble the Realistic type, somewhat less resemble the Enterprising type, and resemble the Social type even less. The types that are not in your code are the types you resemble least of all.`,
    description_ar: `من الأحد إلى الخميس من 7:00 ص إلى`,
    seo_code: ``,
    video_url: ``,
    image_url: ``,
    chapter_count: 6,
    question_count: 42,
    active: 1,
  },
];

const tableName = 'gca_tests';

exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex(tableName).del()
    .then(function () {
      // Inserts seed entries
      return knex(tableName).insert(rows);
    });
};
