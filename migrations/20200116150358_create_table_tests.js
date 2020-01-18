
exports.up = function(knex) {
  return knex.schema
    .createTable('gca_tests', function (table) {
      table.integer('id').primary();
      table.string('title_en', 100).notNullable();
      table.string('title_ar', 100).notNullable();
      table.text('description_en').notNullable();
      table.text('description_ar').notNullable();
      table.string('seo_code', 100).notNullable().unique();
      table.text('video_url');
      table.text('image_url');
      table.integer('chapter_count').notNullable();
      table.integer('question_count').notNullable();
      table.boolean('active').notNullable().index();
    });
};

exports.down = function(knex) {
  return knex.schema.dropTable('gca_tests');
};
