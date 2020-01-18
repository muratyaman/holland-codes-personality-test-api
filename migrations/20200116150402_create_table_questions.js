
exports.up = function(knex) {
  return knex.schema
    .createTable('gca_questions', function (table) {
      table.integer('id').primary();
      table.string('title_en', 100).notNullable();
      table.string('title_ar', 100).notNullable();
      table.boolean('active').notNullable().index();
      table.integer('test_id').notNullable().index();
      table.boolean('chapter_number').notNullable().index();
      table.integer('sort_idx').notNullable().index();
      
      table.index(['active', 'test_id', 'chapter_number', 'sort_idx']);
      table.foreign('test_id').references('gca_tests.id')
        .onUpdate('cascade').onDelete('cascade');
    });
};

exports.down = function(knex) {
  return knex.schema.dropTable('gca_questions');
};
